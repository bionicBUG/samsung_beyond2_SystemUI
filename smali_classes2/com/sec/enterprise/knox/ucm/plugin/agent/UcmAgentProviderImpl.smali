.class public Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.super Ljava/security/Provider;
.source "UcmAgentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl$AbstractProviderService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AgentProviderImpl"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Samsung Extension Keystore Provider Impl"

    .line 79
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
