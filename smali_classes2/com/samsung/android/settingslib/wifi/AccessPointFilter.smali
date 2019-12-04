.class public Lcom/samsung/android/settingslib/wifi/AccessPointFilter;
.super Ljava/lang/Object;
.source "AccessPointFilter.java"


# static fields
.field private static final CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

.field private static final DISPLAY_SSID_STATUS_BAR_INFO:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilterOAuthPasspointNetworks:Z

.field private mFilterTencentRiskNetworks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->isSupportEapAka()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    .line 43
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isAllowToShowInAccessPointList(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 3

    .line 92
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    sget-boolean p0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->DISPLAY_SSID_STATUS_BAR_INFO:Z

    if-eqz p0, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Swisscom"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    .line 99
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->CSC_WIFI_SUPPORT_VZW_EAP_AKA:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerizonWiFi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->mFilterOAuthPasspointNetworks:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->semIsOpenRoamingNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 107
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointFilter;->mFilterTencentRiskNetworks:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->semIsTencentRiskAp()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isAllowToShowInScanList(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 80
    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    const/4 v0, 0x0

    const/16 v1, -0x4e

    if-ge p0, v1, :cond_0

    return v0

    .line 83
    :cond_0
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v1, 0x1388

    if-le p1, v1, :cond_1

    const/16 v1, 0x1770

    if-ge p1, v1, :cond_1

    const/16 p1, -0x4b

    if-ge p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
