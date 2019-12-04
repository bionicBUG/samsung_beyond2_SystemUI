.class final Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
.super Ljava/security/Provider$Service;
.source "UcmKeystoreProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UcmProviderService"
.end annotation


# instance fields
.field private mSrc:Ljava/lang/String;


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyStore"

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystore;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "KeyPairGenerator"

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "SecureRandom"

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    new-instance p1, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmSecureRandom;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 316
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
