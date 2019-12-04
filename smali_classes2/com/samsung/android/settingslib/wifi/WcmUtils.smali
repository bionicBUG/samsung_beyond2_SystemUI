.class public Lcom/samsung/android/settingslib/wifi/WcmUtils;
.super Ljava/lang/Object;
.source "WcmUtils.java"


# static fields
.field private static isWcmSupported:I = -0x1

.field private static isWifiOnlyDevice:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSnsCurrentMode(Landroid/net/wifi/IWifiManager;)I
    .locals 2

    .line 62
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x12f

    .line 63
    iput v1, v0, Landroid/os/Message;->what:I

    .line 65
    :try_start_0
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getSnsEverQualityTested(Landroid/net/wifi/IWifiManager;)Z
    .locals 2

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x130

    .line 74
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public static isValidated(Landroid/net/wifi/IWifiManager;)Z
    .locals 2

    .line 84
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x133

    .line 85
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public static isWcmSupported(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .line 48
    sget v0, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWcmSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 51
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWifiOnly(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 54
    :cond_0
    sput v1, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWcmSupported:I

    .line 56
    :cond_1
    sput v2, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWcmSupported:I

    .line 58
    :cond_2
    sget p0, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWcmSupported:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static isWifiOnly(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .line 40
    sget v0, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWifiOnlyDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    xor-int/2addr p0, v2

    .line 42
    sput p0, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWifiOnlyDevice:I

    .line 44
    :cond_0
    sget p0, Lcom/samsung/android/settingslib/wifi/WcmUtils;->isWifiOnlyDevice:I

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method
