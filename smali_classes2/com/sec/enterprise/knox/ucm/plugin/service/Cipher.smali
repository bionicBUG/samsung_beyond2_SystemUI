.class public Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->algorithm:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    .line 36
    iput-object p2, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 47
    const-class v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    const-string v1, "Cipher"

    invoke-static {v1, v0, p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;

    invoke-direct {v1, v0, p1, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;-><init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "spi == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithm == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provider == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doFinal([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;->engineDoFinal([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    instance-of v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;->getErrorCode()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Cipher"

    const-string v0, "getErrorStatus not instance of UcmAgentCipherSpi"

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x13

    return p0
.end method

.method public init(ILjava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
