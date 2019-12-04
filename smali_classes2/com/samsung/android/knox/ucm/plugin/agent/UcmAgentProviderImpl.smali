.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.super Ljava/security/Provider;
.source "UcmAgentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$AbstractProviderService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "AgentProviderImpl"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Samsung Extension Keystore Provider Impl"

    .line 89
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method
