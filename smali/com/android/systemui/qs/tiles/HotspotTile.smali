.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;,
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x5

.field private static final TETHER_SETTINGS:Landroid/content/Intent;

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFI_AP_RANDOM_PASSWORD:Ljava/lang/String; = "wifi_ap_random_password"

.field private static final WIFI_SHARING_MENU_DEFAULT:I = 0xa

.field private static final WIFI_SHARING_MENU_DISABLE:I = 0x2

.field private static final WIFI_SHARING_MENU_ENABLE:I = 0x1


# instance fields
.field private final HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mListening:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 91
    sget p1, Lcom/android/systemui/R$drawable;->ic_hotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 93
    sget p1, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifihotspot:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 98
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    .line 132
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 133
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 138
    iput-object p6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 139
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 141
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    .line 145
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, " HotspotTile  : "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(I)I
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSimCheck()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSHost;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/qs/tiles/HotspotTile;)I
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getIcon()I

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private getIcon()I
    .locals 0

    .line 322
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_ICON:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_vzw_mobilehotspot:I

    goto :goto_0

    .line 323
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_ICON:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_spr_hotspot:I

    goto :goto_0

    .line 324
    :cond_1
    sget p0, Lcom/android/systemui/R$drawable;->quick_panel_icon_wifihotspot:I

    :goto_0
    return p0
.end method

.method private getIndoorStatus()Z
    .locals 2

    .line 823
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x13a

    .line 825
    iput v1, v0, Landroid/os/Message;->what:I

    .line 826
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSecondaryLabel(ZZZI)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_hotspot_secondary_label_transient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 412
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_hotspot_secondary_label_data_saver_enabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-lez p4, :cond_2

    if-eqz p1, :cond_2

    .line 415
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$plurals;->quick_settings_hotspot_secondary_label_num_devices:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 418
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    .line 415
    invoke-virtual {p0, p1, p4, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringID(I)I
    .locals 1

    .line 1263
    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label:I

    if-ne p0, v0, :cond_0

    .line 1264
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label_jpn:I

    goto/16 :goto_0

    .line 1265
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_detail_title:I

    if-ne p0, v0, :cond_1

    .line 1266
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_detail_title_jpn:I

    goto/16 :goto_0

    .line 1267
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off:I

    if-ne p0, v0, :cond_3

    .line 1268
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v0, :cond_2

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off_tmo:I

    goto/16 :goto_0

    .line 1269
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off_vzw:I

    goto/16 :goto_0

    .line 1270
    :cond_3
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off:I

    if-ne p0, v0, :cond_a

    .line 1271
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_4

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_vzw:I

    goto/16 :goto_0

    .line 1272
    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v0, :cond_5

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_spr:I

    goto/16 :goto_0

    .line 1273
    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v0, :cond_6

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_tmo:I

    goto/16 :goto_0

    .line 1274
    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz v0, :cond_7

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_att:I

    goto/16 :goto_0

    .line 1275
    :cond_7
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_MTR_POPUP:Z

    if-eqz v0, :cond_8

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_mtr:I

    goto/16 :goto_0

    .line 1276
    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v0, :cond_9

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_chn:I

    goto/16 :goto_0

    .line 1277
    :cond_9
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_jpn:I

    goto/16 :goto_0

    .line 1278
    :cond_a
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_smartview_off:I

    if-ne p0, v0, :cond_b

    goto/16 :goto_0

    .line 1280
    :cond_b
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off:I

    if-ne p0, v0, :cond_10

    .line 1281
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_c

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_vzw:I

    goto/16 :goto_0

    .line 1282
    :cond_c
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v0, :cond_d

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_tmo:I

    goto/16 :goto_0

    .line 1283
    :cond_d
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v0, :cond_e

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_spr:I

    goto/16 :goto_0

    .line 1284
    :cond_e
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v0, :cond_f

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_chn:I

    goto/16 :goto_0

    .line 1285
    :cond_f
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off_jpn:I

    goto/16 :goto_0

    .line 1286
    :cond_10
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off:I

    if-ne p0, v0, :cond_13

    .line 1287
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_11

    .line 1288
    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_vzw:I

    goto :goto_0

    .line 1289
    :cond_11
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v0, :cond_12

    .line 1290
    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_tmo:I

    goto :goto_0

    .line 1291
    :cond_12
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off_jpn:I

    goto :goto_0

    .line 1292
    :cond_13
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off:I

    if-ne p0, v0, :cond_18

    .line 1293
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_14

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_vzw:I

    goto :goto_0

    .line 1294
    :cond_14
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SPR_POPUP:Z

    if-eqz v0, :cond_15

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_spr:I

    goto :goto_0

    .line 1295
    :cond_15
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_TMB_POPUP:Z

    if-eqz v0, :cond_16

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_tmo:I

    goto :goto_0

    .line 1296
    :cond_16
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_CHINA_POPUP:Z

    if-eqz v0, :cond_17

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_chn:I

    goto :goto_0

    .line 1297
    :cond_17
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off_jpn:I

    goto :goto_0

    .line 1298
    :cond_18
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title:I

    if-ne p0, v0, :cond_19

    .line 1299
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1b

    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title_jpn:I

    goto :goto_0

    .line 1300
    :cond_19
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message:I

    if-ne p0, v0, :cond_1b

    .line 1301
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_1a

    .line 1302
    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message_jpn:I

    goto :goto_0

    .line 1303
    :cond_1a
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_CTC_POPUP:Z

    if-eqz v0, :cond_1b

    .line 1304
    sget p0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nousim_or_nosim_warning:I

    :cond_1b
    :goto_0
    return p0
.end method

.method private isAirplaneModeEnabled()Z
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 668
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_toast_disable_airplne_mode:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_0
    return v1
.end method

.method private isBlockedByEASPolicy()Z
    .locals 1

    .line 918
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBlockedByOthers()Z
    .locals 5

    .line 926
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ENABLED_SPRINT_EXTENSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v2, "persist.sys.tether_data_wifi"

    .line 928
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 929
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBlockedByOthers : SPRINT_EXTENSION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v0, :cond_1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method private isDataSaverEnabled()Z
    .locals 0

    .line 938
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isP2pConnected()Z
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 689
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    .line 690
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isP2PConnected = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSimCheck()Z
    .locals 0

    .line 1253
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_CHECK_MHSDBG:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_IS_SIMCHECK_DISABLED:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    .line 814
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private setHotspotEnabled()V
    .locals 3

    .line 797
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 799
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 800
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 801
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "wifiap_warning_dialog_type"

    const/4 v2, 0x5

    .line 802
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    .line 804
    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 805
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "setHotspotEnabled start for USA or SBM"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setHotspotEnabled(Z)V
    .locals 6

    .line 834
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspotEnabled -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 859
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingSupported()Z

    move-result v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 863
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 864
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 866
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    .line 867
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWifiSharingNotifyDialog(Z)V

    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 869
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    .line 886
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 888
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingSupported()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 889
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 907
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    .line 896
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 897
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 898
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getIndoorStatus()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 902
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 903
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "WIFI_DISPLAY_ON is 1. Show Pop-up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    goto :goto_3

    .line 899
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "If isP2p Connected Show Pop-up "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    .line 912
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 913
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void

    .line 835
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "enable hotspot for USA or SBM"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled()V

    return-void
.end method

.method private showDataSaverToast()V
    .locals 2

    .line 942
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040626

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showNoSIMDialog()V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 643
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_title:I

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    .line 644
    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot_dialog_nosim_warning_message:I

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    .line 646
    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 647
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 663
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWarningDialog(Z)V
    .locals 6

    .line 698
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showWarningDialog(): mAlertDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 704
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->popupui_dialog_turn_on_button:I

    .line 706
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_3

    .line 709
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void

    .line 712
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 714
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    goto :goto_2

    .line 718
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 719
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    sget v1, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifidirect_off:I

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    .line 722
    sget v2, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifidirect_off:I

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    goto :goto_3

    .line 723
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 724
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 725
    sget v1, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off_wifisharing_lite:I

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    .line 726
    sget v2, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off_wifisharing_lite:I

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    goto :goto_3

    .line 730
    :cond_6
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_wifi_off:I

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    .line 731
    sget v0, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_wifi_off:I

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    .line 732
    sget v0, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_turn_off:I

    goto :goto_3

    .line 716
    :cond_7
    :goto_2
    sget v1, Lcom/android/systemui/R$string;->hotspot_warning_dialog_title_smartview_off:I

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v1

    .line 717
    sget v2, Lcom/android/systemui/R$string;->hotspot_warning_dialog_msg_smartview_off:I

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v2

    .line 734
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v5, "Setting the DB val :settings.Secure.WIFI_AP_DUAL_POPUP to 1"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "wifi_ap_dual_popup"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 736
    new-instance v3, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 737
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 738
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 739
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$10;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 768
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 774
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$12;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 780
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$13;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 787
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 788
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAlertDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWifiSharingNotifyDialog(Z)V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xa

    const-string/jumbo v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 604
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "NO first time WifiSharing popup for LITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 607
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    .line 610
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "showing first time WifiSharingdialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 616
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_wifi_sharing_notify_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 617
    sget v0, Lcom/android/systemui/R$string;->mobile_hotspot_wifi_sharing_notify_dialog_message:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 618
    sget v0, Lcom/android/systemui/R$string;->ok:I

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 623
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 628
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 633
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 634
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 611
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, "USA or SBM device, so ignoring first time popup from here"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showWifiSharingSelectDialog(Z)V
    .locals 8

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v3, 0xa

    const-string/jumbo v4, "wifi_ap_wifi_sharing"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 519
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "NO first time WifiSharing popup for LITE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 522
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V

    return-void

    .line 525
    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_USA_POPUP:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_SBM_POPUP:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showing first time WifiSharing dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 532
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->hotspot_enable_wifi_sharing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 533
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->hotspot_disable_wifi_sharing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 534
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v4, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 535
    sget v6, Lcom/android/systemui/R$string;->mobile_hotspot_wifi_sharing:I

    .line 536
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {v7, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    .line 537
    invoke-virtual {v6, v3, v1, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->cancel:I

    new-instance v6, Lcom/android/systemui/qs/tiles/HotspotTile$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    .line 572
    invoke-virtual {v1, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V

    .line 579
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 586
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$layout;->wifi_ap_wifi_sharing_dialog:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 594
    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 595
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 596
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 597
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void

    .line 526
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string p1, "USA or SBM device, so ignoring first time popup from here"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 434
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_hotspot_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 161
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HotspotTile  getDetailAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 184
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-object v1

    .line 188
    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 189
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 190
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isUserWifiHotspotRestricted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-object v1

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 202
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 205
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->HOTSPOT_SETTINGS_INTENT:Landroid/content/Intent;

    return-object p0

    .line 192
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 315
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_hotspot_label:I

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getStringID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 220
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v2, " handleClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x1040626

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 230
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    .line 234
    :cond_2
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    .line 235
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_7

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 237
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, " handleClick  : isBlockedByOthers"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 246
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 247
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 248
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$p0uo47GQQYmpVGSu1ov-I6RRDgA;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$p0uo47GQQYmpVGSu1ov-I6RRDgA;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 255
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSecure() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 256
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canSkipBouncer() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 257
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLockFunctionsEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 258
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object v2, v1

    goto :goto_0

    .line 261
    :cond_6
    sget-object v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    xor-int/lit8 v0, v0, 0x1

    .line 262
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    const-string v0, "handle_click"

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 2

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 281
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V

    return-void

    .line 285
    :cond_2
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 286
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 287
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isUserWifiHotspotRestricted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 289
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 294
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 295
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 296
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$9EB5AWxJA6n5NC7mBhMRc-wM9f8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$HotspotTile$9EB5AWxJA6n5NC7mBhMRc-wM9f8;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void

    .line 290
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    .line 330
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "no_config_tethering"

    .line 334
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 335
    instance-of v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v3, :cond_1

    .line 336
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 337
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 338
    iget v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 339
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    goto :goto_1

    .line 341
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 342
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v3

    .line 343
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result p2

    .line 345
    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 347
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 348
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    .line 349
    :goto_3
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 352
    :cond_4
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    :cond_5
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_5

    .line 350
    :cond_6
    :goto_4
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 355
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getIcon()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 356
    invoke-direct {p0, v4, v0, p2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "available"

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->addStateLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public synthetic lambda$handleClick$0$HotspotTile()V
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method public synthetic lambda$handleSecondaryClick$1$HotspotTile()V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 214
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
