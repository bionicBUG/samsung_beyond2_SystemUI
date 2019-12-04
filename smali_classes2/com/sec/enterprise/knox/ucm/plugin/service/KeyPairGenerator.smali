.class public Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;
.super Ljava/lang/Object;
.source "KeyPairGenerator.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p3, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    .line 30
    iput-object p2, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 41
    const-class v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    const-string v1, "KeyPairGenerator"

    invoke-static {v1, v0, p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;

    invoke-direct {v1, v0, p1, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;-><init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "spi == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithm == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provider == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    invoke-virtual {p0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
