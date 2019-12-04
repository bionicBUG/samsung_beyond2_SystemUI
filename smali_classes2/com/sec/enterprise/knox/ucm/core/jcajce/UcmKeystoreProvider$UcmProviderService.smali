.class final Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
.super Ljava/security/Provider$Service;
.source "UcmKeystoreProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UcmProviderService"
.end annotation


# instance fields
.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 72
    invoke-static {p5}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->toList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 73
    iput-object p6, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    return-void
.end method

.method private static toList([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyStore"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance p1, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystore;

    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystore;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "KeyPairGenerator"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance p1, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "SecureRandom"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance p1, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;

    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;->mSrc:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 86
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
