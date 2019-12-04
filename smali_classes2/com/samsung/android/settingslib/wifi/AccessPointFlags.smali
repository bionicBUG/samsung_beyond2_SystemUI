.class public Lcom/samsung/android/settingslib/wifi/AccessPointFlags;
.super Ljava/lang/Object;
.source "AccessPointFlags.java"


# static fields
.field private static isTencentSecuritySupported:I = -0x1

.field private static isWapiSupported:I = -0x1

.field private static isWechatSupported:I = -0x1

.field private static isWpa3OweSupported:I = -0x1

.field private static isWpa3SaeSupported:I = -0x1

.field private static isWpa3SuiteBSupported:I = -0x1

.field private static sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# instance fields
.field public bssidForWechat:Ljava/lang/String;

.field public hasVHTVSICapabilities:Z

.field public hasWifi6Network:Z

.field public isActiveStateChanged:Z

.field public isOAuthProvider:Z

.field public isSignalLevelChanged:Z

.field public isSmartAp:Z

.field public isTencentRiskAp:Z

.field public isVendor:Z

.field public isWechatNetwork:Z

.field private mSecFlags:Ljava/util/BitSet;

.field public passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public smartApUserName:Ljava/lang/String;

.field public wechatStoreName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->updateSecFlags(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;-><init>()V

    const-string v0, "key_passpointconifg"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    :cond_0
    const-string v0, "key_samsung_flags"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    const-string v0, "key_olleh_giga_ap"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasVHTVSICapabilities:Z

    :cond_2
    const-string v0, "key_wifi_6"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasWifi6Network:Z

    :cond_3
    const-string v0, "key_wechat_network"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    if-eqz v0, :cond_4

    const-string v0, "key_wechat_store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->wechatStoreName:Ljava/lang/String;

    const-string v0, "key_wechat_bssid"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->bssidForWechat:Ljava/lang/String;

    :cond_4
    const-string v0, "key_tencent_risk_ap"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentRiskAp:Z

    :cond_5
    const-string v0, "key_vendor"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    :cond_6
    const-string v0, "key_oauth_provider"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isOAuthProvider:Z

    :cond_7
    return-void
.end method

.method public static getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;
    .locals 1

    .line 318
    sget-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    .line 321
    :cond_0
    sget-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->sTencentManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    return-object v0
.end method

.method public static hasVHTVSICapabilities(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 239
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[VHT]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "[VSI]"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnhancedOpenSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 332
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3OweSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    sput p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3OweSupported:I

    .line 335
    :cond_0
    sget p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3OweSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTencentSecuritySupported()Z
    .locals 2

    .line 354
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentSecuritySupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 355
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 356
    sput v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentSecuritySupported:I

    .line 358
    :cond_0
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentSecuritySupported:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWapiSupported()Z
    .locals 2

    .line 346
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWapiSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 347
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 348
    sput v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWapiSupported:I

    .line 350
    :cond_0
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWapiSupported:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWechatSupported()Z
    .locals 2

    .line 362
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 363
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeChatWiFi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 364
    sput v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatSupported:I

    .line 366
    :cond_0
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatSupported:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWpa3SaeSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 325
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SaeSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    sput p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SaeSupported:I

    .line 328
    :cond_0
    sget p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SaeSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWpa3SuiteBSupported(Landroid/net/wifi/WifiManager;)Z
    .locals 2

    .line 339
    sget v0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SuiteBSupported:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p0

    sput p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SuiteBSupported:I

    .line 342
    :cond_0
    sget p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWpa3SuiteBSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkAndSetRisk(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentRiskAp:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isWifiSecurityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isRiskAp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentRiskAp:Z

    :cond_0
    return-void
.end method

.method public getSecFlags()Ljava/util/BitSet;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 5

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ani="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isSignalLevelChanged:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "level"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 276
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isActiveStateChanged:Z

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    const-string v1, ","

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "active"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    const-string v1, "none"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_4

    const-string v1, ", hs20"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", mdm"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasVHTVSICapabilities:Z

    if-eqz v1, :cond_6

    const-string v1, ", giga"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasWifi6Network:Z

    if-eqz v1, :cond_7

    const-string v1, ", ax"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ", mhs"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isSmartAp:Z

    if-eqz v1, :cond_9

    const-string v1, ", smhs-"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->smartApUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    if-eqz v1, :cond_a

    const-string v1, ", vendor"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isOAuthProvider:Z

    if-eqz v1, :cond_b

    const-string v1, ", oauth"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentRiskAp:Z

    if-eqz v1, :cond_c

    const-string v1, ", risk"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    if-eqz v1, :cond_d

    const-string v1, ", wechat-"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->wechatStoreName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllCapabilities()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasVHTVSICapabilities:Z

    .line 176
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasWifi6Network:Z

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    return-void
.end method

.method public resetFlagsForListAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isSignalLevelChanged:Z

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isActiveStateChanged:Z

    return-void
.end method

.method public updateSecFlags(Landroid/net/wifi/ScanResult;)V
    .locals 4

    .line 214
    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasVHTVSICapabilities(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 215
    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasVHTVSICapabilities:Z

    .line 217
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->wifiMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 218
    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->hasWifi6Network:Z

    .line 220
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SEC80"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 223
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SEC21"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 226
    :cond_3
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->wechatStoreName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getStoreNameIfWeChatAp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->wechatStoreName:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->wechatStoreName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    .line 230
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->bssidForWechat:Ljava/lang/String;

    .line 233
    :cond_4
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isTencentSecuritySupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->getTencentManager()Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->checkAndSetRisk(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public updateSecFlags(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->mSecFlags:Ljava/util/BitSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    if-nez v0, :cond_0

    .line 203
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->semIsWeChatAp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isWechatNetwork:Z

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    if-nez v0, :cond_1

    .line 206
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->semIsVendorSpecificSsid:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    .line 209
    :cond_1
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->semMhsUserName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->smartApUserName:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->smartApUserName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isSmartAp:Z

    return-void
.end method

.method public updateSecFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2

    .line 189
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    .line 193
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isOAuthEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isOAuthProvider:Z

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vendor:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isVendor:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " oauth:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFlags;->isOAuthProvider:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessPointFlags"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
