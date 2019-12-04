.class public Lcom/android/keyguard/KeyguardCarrierView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# static fields
.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mContext:Landroid/content/Context;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowingOwnerCallButton:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerCallButton:Landroid/widget/Button;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field private mPhoneState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mUnlockButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/keyguard/KeyguardCarrierView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardCarrierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 76
    iput p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    const-string v0, "0000"

    .line 78
    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneNumber:Ljava/lang/String;

    .line 80
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    const/4 p2, 0x0

    .line 89
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 91
    new-instance p2, Lcom/android/keyguard/KeyguardCarrierView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardCarrierView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 98
    new-instance p2, Lcom/android/keyguard/KeyguardCarrierView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardCarrierView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 131
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    .line 133
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.sec.android.CarrierLock.DISABLED"

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    new-instance p2, Lcom/android/keyguard/KeyguardCarrierView$3;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardCarrierView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardCarrierView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCarrierView;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardCarrierView;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isSimStateAbsentAll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardCarrierView;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardCarrierView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setCarrierLockPlusInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->registerPhoneStateListener()V

    return-void
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 533
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 534
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 535
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p1, "KeyguardCarrierView"

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 446
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 447
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardCarrierView;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    sget-object v2, Lcom/android/keyguard/KeyguardCarrierView;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p0, 0x0

    .line 448
    invoke-static {p2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 449
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception p0

    .line 451
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method private getCarrierLockPlusPassword()[B
    .locals 6

    const-string v0, "KeyguardCarrierView"

    const/4 v1, 0x0

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isCarrierLockENCVersion()Z

    move-result v2

    const/16 v3, 0x100

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-static {v4, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 390
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v2, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 392
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":"

    .line 393
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 394
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/android/keyguard/KeyguardCarrierView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "getCarrierLockPlusPassword(), passowrd is null"

    .line 396
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v2, "getCarrierLockPlusPassword(), IOException!!"

    .line 400
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "SHA-256"

    .line 438
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string p1, "SKT : Find lost phone plus !!!"

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 440
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private isCarrierLockENCVersion()Z
    .locals 1

    .line 433
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isSimStateAbsentAll()Z
    .locals 6

    .line 506
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 507
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 511
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimStateAbsentAll() : simSlotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simStates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KeyguardCarrierView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 514
    array-length v4, v2

    if-gt v4, v1, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    aget-object v4, v2, v1

    const-string v5, "ABSENT"

    .line 518
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v3, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    :cond_3
    return v1
.end method

.method private isSimStateReadyOrLoaded()Z
    .locals 6

    .line 483
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const-string v0, "gsm.sim.state"

    const-string v1, ""

    .line 484
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimStateReadyOrLoaded() : simSlotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simStates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardCarrierView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, ","

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    .line 490
    array-length v3, v0

    if-gt v3, v2, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    aget-object v3, v0, v2

    const-string v4, "READY"

    .line 494
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const-string v4, "LOADED"

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method private setCarrierLockPlusInfo()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 310
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->getCarrierLockPlusPassword()[B

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    .line 309
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 311
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->updateCarrierLockPlusMessage()V

    return-void
.end method

.method private setVisibleOwnerCallButton()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton(Z)V

    return-void
.end method

.method private setVisibleOwnerCallButton(Z)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isSimStateReadyOrLoaded()Z

    move-result p1

    const/4 v0, 0x0

    .line 365
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVisibleOwnerCallButton state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CallButton ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSimStateReadyOrLoaded ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardCarrierView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 376
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 304
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x8

    .line 326
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 327
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    .line 330
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateCarrierLockPlusMessage()V
    .locals 6

    const-string v0, "KeyguardCarrierView"

    .line 409
    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->isCarrierLockENCVersion()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static {v4, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardCarrierView;->decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 413
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":"

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 417
    aget-object v2, v1, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mIsShowingOwnerCallButton:Z

    .line 418
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    .line 419
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_1
    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "updateCarrierLockPlusMessage(), message is null"

    .line 424
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo v1, "updateCarrierLockPlusMessage(), IOException"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateCarrierTextPadding()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 336
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    if-lez v0, :cond_1

    .line 342
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 343
    :goto_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 345
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 346
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$dimen;->status_bar_padding_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardCarrierView(Landroid/view/View;)V
    .locals 3

    .line 197
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "tel"

    const-string v1, "0000"

    const/4 v2, 0x0

    .line 198
    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardCarrierView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardCarrierView(Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardCarrierView"

    const-string v1, "onApplyWindowInsets"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 477
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->updateCarrierTextPadding()V

    .line 479
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 259
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 261
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->unregisterPhoneStateListener()V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string v0, "KeyguardCarrierView"

    const-string v1, "onFinishInflate()"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setCarrierLockPlusInfo()V

    .line 181
    sget v0, Lcom/android/keyguard/R$id;->carrier_owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    .line 182
    sget v0, Lcom/android/keyguard/R$id;->carrier_owner_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    .line 183
    sget v0, Lcom/android/keyguard/R$id;->carrier_unlock_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    .line 184
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 186
    sget v0, Lcom/android/keyguard/R$id;->carrier_emergency_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 196
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierView$gi137DmW1Q8IEcb2RInqiuaovP0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierView$gi137DmW1Q8IEcb2RInqiuaovP0;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->setVisibleOwnerCallButton()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 210
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierView$z-p8bME2xi2jq-985w4BZj2-l6g;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardCarrierView$z-p8bME2xi2jq-985w4BZj2-l6g;-><init>(Lcom/android/keyguard/KeyguardCarrierView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierView;->updateCarrierTextPadding()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    .line 269
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/high16 p2, 0x400000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
