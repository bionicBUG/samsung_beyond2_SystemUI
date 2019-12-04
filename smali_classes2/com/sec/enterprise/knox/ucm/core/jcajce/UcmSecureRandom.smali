.class public Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "UcmSecureRandom.java"


# instance fields
.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 2

    .line 35
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;->mSource:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 37
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, p0, p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p1, "bytearrayresponse"

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected engineNextBytes([B)V
    .locals 0

    .line 30
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineSetSeed([B)V
    .locals 0

    .line 25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
