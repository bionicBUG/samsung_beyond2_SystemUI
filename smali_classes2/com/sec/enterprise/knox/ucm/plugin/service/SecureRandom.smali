.class public Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;
.super Ljava/lang/Object;
.source "SecureRandom.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->provider:Ljava/security/Provider;

    .line 43
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    .line 44
    iput-object p3, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 33
    const-class v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    const-string v1, "SecureRandom"

    invoke-static {v1, v0, p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;

    invoke-direct {v1, v0, p1, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;-><init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "spi == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithm == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "provider == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->spiImpl:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
