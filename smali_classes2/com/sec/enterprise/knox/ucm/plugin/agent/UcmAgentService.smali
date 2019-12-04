.class public abstract Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;
.super Landroid/app/Service;
.source "UcmAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;,
        Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;
    }
.end annotation


# instance fields
.field private err_code:I

.field private mProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    new-instance v0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->err_code:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->decrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->generateKeyPair(Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final decrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "UcmAgentService"

    const-string v1, "decrypt"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "bytearrayresponse"

    const-string v4, "errorresponse"

    if-nez p3, :cond_0

    const-string p0, "property is null"

    .line 563
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p0, 0x10

    .line 565
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 568
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x2

    :try_start_0
    const-string v6, "KNOX"

    .line 576
    iget-object v7, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, v7}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object v6

    if-nez v6, :cond_2

    const-string p0, "Cannot getting Keystore Instance"

    .line 578
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    .line 580
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 583
    :cond_2
    invoke-virtual {v6, p3}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 584
    new-instance v7, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v8, "ownerUid"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "resource"

    .line 585
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    .line 586
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 587
    invoke-virtual {v6, v7}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 588
    invoke-virtual {v6, p1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "getEntry null "

    .line 590
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 592
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    .line 593
    :goto_0
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 596
    :cond_4
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "getPrivateKey null "

    .line 598
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 600
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0xa

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    .line 601
    :goto_1
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_6
    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 605
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "Cipher instance null "

    .line 607
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 609
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 612
    :cond_7
    invoke-virtual {p0, p3}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    .line 613
    invoke-virtual {p0, v5, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->init(ILjava/security/PrivateKey;)V

    .line 614
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 616
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 617
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 657
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 647
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 648
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 644
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 645
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const/16 p0, 0x10c

    .line 642
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_4
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const/16 p0, 0x10b

    .line 639
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_5
    move-exception p0

    .line 635
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 636
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_6
    move-exception p0

    .line 632
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    .line 633
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_7
    move-exception p0

    .line 629
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    .line 630
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_8
    move-exception p0

    .line 626
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    .line 627
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_9
    move-exception p0

    .line 623
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    .line 624
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_a
    move-exception p0

    .line 620
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 621
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private final deleteKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "UcmAgentService"

    const-string v1, "deleteKey"

    .line 759
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "booleanresponse"

    const-string v4, "errorresponse"

    if-nez p2, :cond_0

    const-string p0, "property is null"

    .line 762
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x10

    .line 764
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 767
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteKey "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    const/16 v6, 0x10a

    :try_start_0
    const-string v7, "KNOX"

    .line 771
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v7, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x7

    .line 773
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    .line 777
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 778
    new-instance v7, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v8, "ownerUid"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "resource"

    .line 779
    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    .line 780
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v7, v8, v9, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 781
    invoke-virtual {p0, v7}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 784
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 785
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with error code ks.getErrorStatus() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 807
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 808
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 804
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 805
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 801
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 802
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 798
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 799
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 795
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 796
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 792
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 793
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_6
    move-exception p0

    .line 789
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 790
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 811
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to deleteKey with EXCEPTION error code  = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private final encrypt(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "UcmAgentService"

    const-string v1, "encrypt"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "bytearrayresponse"

    const-string v4, "errorresponse"

    if-nez p3, :cond_0

    const-string p0, "property is null"

    .line 457
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p0, 0x10

    .line 459
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 462
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encrypt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x2

    :try_start_0
    const-string v6, "KNOX"

    .line 470
    iget-object v7, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, v7}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object v6

    if-nez v6, :cond_2

    const-string p0, "Cannot get Keystore Instance"

    .line 472
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    .line 474
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 477
    :cond_2
    invoke-virtual {v6, p3}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 478
    new-instance v7, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v8, "ownerUid"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "resource"

    .line 479
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "extraArgs"

    .line 480
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 481
    invoke-virtual {v6, v7}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 482
    invoke-virtual {v6, p1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "getEntry null "

    .line 484
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 486
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    .line 487
    :goto_0
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 491
    :cond_4
    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "getPrivateKey null "

    .line 493
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 495
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0xa

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    .line 496
    :goto_1
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_6
    const-string v6, "RSA/ECB/PKCS1Padding"

    .line 500
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "Cipher instance null "

    .line 502
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 504
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 507
    :cond_7
    invoke-virtual {p0, p3}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->setProperty(Landroid/os/Bundle;)V

    const/4 p3, 0x1

    .line 508
    invoke-virtual {p0, p3, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->init(ILjava/security/PrivateKey;)V

    .line 509
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 511
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 512
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/Cipher;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 551
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 552
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 543
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 539
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 540
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 536
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const/16 p0, 0x10c

    .line 537
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_4
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const/16 p0, 0x10b

    .line 534
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_5
    move-exception p0

    .line 530
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 531
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_6
    move-exception p0

    .line 527
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    .line 528
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_7
    move-exception p0

    .line 524
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    .line 525
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_8
    move-exception p0

    .line 521
    invoke-virtual {p0}, Ljava/security/UnrecoverableEntryException;->printStackTrace()V

    const/16 p0, 0x109

    .line 522
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_9
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const/16 p0, 0x107

    .line 519
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_a
    move-exception p0

    .line 515
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 516
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private final generateKeyPair(Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "bytearrayresponse"

    const-string v1, "UcmAgentService"

    const-string v2, "generateKeyPair"

    .line 817
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "errorresponse"

    if-nez p2, :cond_0

    const-string p0, "property is null"

    .line 820
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const-string p1, "booleanresponse"

    .line 821
    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p0, 0x10

    .line 822
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 826
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateKeyPair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "callerUid"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x103

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v6, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;

    move-result-object p0

    if-nez p0, :cond_1

    .line 831
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    .line 835
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->setProperty(Landroid/os/Bundle;)V

    .line 836
    invoke-virtual {p0, p1, v5}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;)V

    .line 837
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 840
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_3

    .line 843
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2

    .line 847
    :cond_3
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    .line 848
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 849
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyPairGenerator;->getErrorStatus()I

    move-result p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 864
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 865
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 861
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 862
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 858
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 859
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 855
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    .line 856
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 852
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 853
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2
.end method

.method private final generateSecureRandom(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "UcmAgentService"

    const-string v1, "generateSecureRandom"

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "bytearrayresponse"

    const-string v4, "errorresponse"

    if-nez p2, :cond_0

    .line 875
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p0, 0x10

    .line 876
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 879
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateSecureRandom "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :try_start_0
    const-string v5, "SHA1PRNG"

    .line 882
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v5, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;

    move-result-object p0

    if-nez p0, :cond_1

    .line 884
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1

    .line 888
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->setProperty(Landroid/os/Bundle;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->generateSeed(I)[B

    move-result-object p1

    .line 890
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 891
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/SecureRandom;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 903
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 904
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 900
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 901
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 897
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 p0, 0x108

    .line 898
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 894
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 895
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private final getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v0, "UcmAgentService"

    const-string v1, "getCertificateChain"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "bytearrayresponse"

    const-string v4, "errorresponse"

    if-nez p2, :cond_0

    const-string p0, "property is null"

    .line 332
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p0, 0x10

    .line 334
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 337
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateChain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "KNOX"

    .line 340
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v5, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Cannot get Keystore Instance"

    .line 342
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    .line 344
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 348
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 350
    new-instance v5, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v6, "ownerUid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "resource"

    .line 351
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraArgs"

    .line 352
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v5, v6, v7, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 355
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_1

    .line 361
    :cond_2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    array-length v0, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    aget-object v6, p1, v5

    .line 363
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 366
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 367
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_4
    :goto_1
    const-string p1, "getCertificateChain empty"

    .line 356
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 358
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 386
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 383
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x2

    .line 380
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    .line 377
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_4
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    const/16 p0, 0x106

    .line 374
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :catch_5
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    .line 371
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private final importKeyPair(Ljava/lang/String;[B[BLcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    const-string v3, "booleanresponse"

    const-string v4, "UcmAgentService"

    const-string v5, "importKeyPair"

    .line 665
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const-string v7, "errorresponse"

    if-nez v2, :cond_0

    const-string v0, "property is null"

    .line 668
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bytearrayresponse"

    .line 669
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v0, 0x10

    .line 670
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    .line 674
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "importKeyPair "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "callerUid"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caller: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "X.509"

    .line 678
    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v0, "Cannot getting certFactory Instance"

    .line 680
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 681
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    invoke-virtual {v5, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v5

    .line 686
    :cond_1
    new-instance v11, Ljava/io/ByteArrayInputStream;

    move-object/from16 v12, p3

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 687
    invoke-virtual {v10, v11}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 688
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/cert/Certificate;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/security/cert/Certificate;

    const-string v11, "KNOX"

    move-object/from16 v12, p0

    .line 693
    iget-object v12, v12, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v11, v12}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v0, 0x7

    .line 695
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    invoke-virtual {v5, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v5

    .line 699
    :cond_2
    invoke-virtual {v11, v2}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 700
    new-instance v12, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v13, "ownerUid"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "resource"

    .line 701
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "extraArgs"

    .line 702
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v12, v13, v14, v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 703
    invoke-virtual {v11, v12}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    if-eqz v1, :cond_3

    const-string v2, "RSA"

    .line 708
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 712
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 713
    invoke-virtual {v2, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {v11, v0, v6}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    .line 717
    :goto_0
    new-instance v2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v2, v1, v10}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    move-object/from16 v1, p4

    .line 718
    invoke-virtual {v11, v0, v2, v1}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    const/4 v0, 0x1

    .line 721
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    invoke-virtual {v11}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with error code ks.getErrorStatus() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 v0, 0x3

    .line 751
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 748
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v0, 0x108

    .line 745
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 741
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    const/16 v0, 0x109

    .line 742
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    const/16 v0, 0x107

    .line 739
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_5
    move-exception v0

    .line 735
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x10d

    .line 736
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_6
    move-exception v0

    .line 732
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 733
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_7
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 v0, 0x105

    .line 730
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_8
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 v0, 0x10a

    .line 727
    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    :goto_1
    invoke-virtual {v5, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @UcmAgentService responding to importKeyPair with EXCEPTION error code  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private final saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const-string v0, "UcmAgentService"

    const-string v1, "saw"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    const-string v3, "stringarrayresponse"

    const-string v4, "errorresponse"

    if-nez p1, :cond_0

    const-string p0, "property is null"

    .line 396
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p0, 0x10

    .line 398
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 401
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saw uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "callerUid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v5, "KNOX"

    .line 405
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->mProvider:Ljava/security/Provider;

    invoke-static {v5, p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Cannot get Keystore Instance"

    .line 407
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 409
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    .line 413
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->setProperty(Landroid/os/Bundle;)V

    .line 414
    new-instance v5, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;

    const-string v6, "ownerUid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "resource"

    .line 415
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "extraArgs"

    .line 416
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v5, v6, v7, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;-><init>(IILandroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0, v5}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 418
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 420
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 421
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 422
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 423
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UCMERRORTESTING: @UcmAgentService responding to saw with error code ks.getErrorStatus() = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/service/KeyStore;->getErrorStatus()I

    move-result p0

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 444
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    const/4 p0, 0x3

    .line 445
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/16 p0, 0x10d

    .line 442
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 438
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x2

    .line 439
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const/16 p0, 0x105

    .line 436
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/16 p0, 0x10a

    .line 433
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "UCMERRORTESTING: @UcmAgentService responding to saw with EXCEPTION error code  = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public abstract APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract generateDek()Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek()Landroid/os/Bundle;
.end method

.method public abstract getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDek()Landroid/os/Bundle;
.end method

.method public abstract getDetailErrorMessage(I)Ljava/lang/String;
.end method

.method public abstract getInfo()Landroid/os/Bundle;
.end method

.method public abstract getStatus()Landroid/os/Bundle;
.end method

.method public abstract notifyChange(ILandroid/os/Bundle;)I
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1017
    new-instance p1, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$1;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 325
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public abstract setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setState(I)Landroid/os/Bundle;
.end method

.method public abstract unwrapDek([B)Landroid/os/Bundle;
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
