.class public Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;
.super Ljava/security/Provider;
.source "UcmKeystoreProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;
    }
.end annotation


# instance fields
.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "KNOX"

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "Samsung KNOX-based Keystore Provider"

    .line 30
    invoke-direct {p0, p1, v2, v3, v4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 33
    invoke-direct {p0, p2}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;->setBundle(Landroid/os/Bundle;)V

    .line 35
    :cond_0
    new-instance v7, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystore;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyStore"

    const-string v3, "KNOX"

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 39
    new-instance v7, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeyPairGenerator;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "KeyPairGenerator"

    const-string v3, "RSA"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 43
    new-instance v7, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;

    const-class v0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmSecureRandom;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider;->mSource:Ljava/lang/String;

    const-string v2, "SecureRandom"

    const-string v3, "SHA1PRNG"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/enterprise/knox/ucm/core/jcajce/UcmKeystoreProvider$UcmProviderService;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v7}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method private setBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uniqueId"

    const-string v1, ""

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "summary"

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "title"

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "vendorId"

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isDetachable"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reqUserVerification"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isHardwareBacked"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isReadOnly"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isManageable"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "enforceManagement"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "configuratorList"

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isGeneratePasswordAvailable"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isPUKSupported"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isPUKSupported"

    invoke-virtual {p0, v0, p1}, Ljava/security/Provider;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
