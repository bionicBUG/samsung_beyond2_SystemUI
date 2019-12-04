.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ICONS:[[I

.field private static final ICONS_GIGA:[[I

.field private static final ICONS_WECHAT:[I


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiApBleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const-string v1, "AccessPointController"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const/4 v1, 0x5

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 70
    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_0:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_lock_0:I

    const/4 v7, 0x1

    aput v5, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_1:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_lock_1:I

    aput v5, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_2:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_lock_2:I

    aput v5, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_3:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_lock_3:I

    aput v5, v4, v7

    aput-object v4, v2, v0

    new-array v4, v3, [I

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_4:I

    aput v5, v4, v6

    sget v5, Lcom/android/systemui/R$drawable;->sec_quickpannel_wifi_signal_lock_4:I

    aput v5, v4, v7

    const/4 v5, 0x4

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    new-array v2, v1, [[I

    new-array v4, v3, [I

    .line 77
    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_0:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_0:I

    aput v8, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_1:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_1:I

    aput v8, v4, v7

    aput-object v4, v2, v7

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_2:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_2:I

    aput v8, v4, v7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_3:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_3:I

    aput v8, v4, v7

    aput-object v4, v2, v0

    new-array v4, v3, [I

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_shift_4:I

    aput v8, v4, v6

    sget v8, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_lock_shift_4:I

    aput v8, v4, v7

    aput-object v4, v2, v5

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    new-array v1, v1, [I

    .line 84
    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_0:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_1:I

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_2:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_3:I

    aput v2, v1, v0

    sget v0, Lcom/android/systemui/R$drawable;->sec_ic_wifi_signal_wechat_4:I

    aput v0, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WECHAT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    .line 324
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 115
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 117
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;ILjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireWifiApBleStateChangeCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private fireAcccessPointsCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 285
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 1

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 279
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWifiApBleStateChangeCallback(ILjava/lang/String;)V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;

    .line 291
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;->onWifiApBleStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_2
    :goto_0
    return-void
.end method

.method public addWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/net/wifi/WifiManager;->registerSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public canConfigWifi()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p0, "no_config_wifi"

    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public connect(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 246
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const-string v2, "AccessPointController"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect networkId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    .line 249
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passPoint : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->startSettings(Lcom/android/settingslib/wifi/AccessPoint;)V

    const/4 p0, 0x1

    return p0

    .line 270
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    return-void
.end method

.method public getIcon(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3

    .line 184
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p0

    const/4 v0, 0x0

    if-gez p0, :cond_0

    move p0, v0

    :cond_0
    const/4 v1, 0x4

    if-le p0, v1, :cond_1

    move p0, v1

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->semIsWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WECHAT:[I

    aget p0, p1, p0

    return p0

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->semIsOllehGigaAp()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object p0, p1, p0

    aget p0, p0, v2

    return p0

    .line 194
    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0

    .line 196
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    if-eqz p1, :cond_5

    .line 197
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v2

    return p0

    .line 199
    :cond_5
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0
.end method

.method public getSmartTetheringIcon(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I
    .locals 3

    .line 205
    iget p0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x3c

    if-lt p0, v2, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, -0x46

    if-lt p0, v2, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, -0x50

    if-lt p0, v2, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, -0x5a

    if-lt p0, v2, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    .line 217
    :goto_0
    iget p1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    if-ne p1, v1, :cond_4

    .line 219
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v1

    return p0

    .line 221
    :cond_4
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object p0, p1, p0

    aget p0, p0, v0

    return p0
.end method

.method public getWifiApBleScanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getBleAccessPoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApBleStatus(Ljava/lang/String;)I
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAccessPointsChanged()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_2
    return-void
.end method

.method public removeWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->unregisterSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;)V

    :cond_0
    return-void
.end method

.method public scanForAccessPoints()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->semForceScan()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public startSettings(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_start_connect_ssid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    const-string v1, "wifi_start_connect_security"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 300
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.android.settings"

    .line 301
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    return-void
.end method

.method public triggerWifiApBleConnection(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Z
    .locals 11

    .line 236
    iget v0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    const-string v1, "triggerWifiApBleConnection() : bleDevice -> "

    const-string v2, "AccessPointController"

    const/16 v3, 0xf

    if-le v0, v3, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v4, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v5, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v6, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v7, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v8, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v10, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->version:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/settingslib/wifi/WifiTracker;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 240
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBattery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
