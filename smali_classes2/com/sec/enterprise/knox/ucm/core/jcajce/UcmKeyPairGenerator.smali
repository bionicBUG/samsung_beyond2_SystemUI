.class public Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmKeyPairGenerator.java"


# instance fields
.field private mSource:Ljava/lang/String;

.field private mSpec:Landroid/security/KeyPairGeneratorSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v3, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    .line 57
    iget-object v2, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v3}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "bytearrayresponse"

    .line 58
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 68
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keystore returned invalid key encoding"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t instantiate key generator"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateKeyPair returns null byte arr"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call initialize with an android.security.KeyPairGeneratorSpec first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 83
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

    if-eqz p1, :cond_1

    .line 92
    instance-of p2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz p2, :cond_0

    .line 97
    check-cast p1, Landroid/security/KeyPairGeneratorSpec;

    .line 98
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    return-void

    .line 93
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "params must be of type android.security.KeyPairGeneratorSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "must supply params of type android.security.KeyPairGeneratorSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
