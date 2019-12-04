.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/LinearLayout;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Ljava/util/Observer;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;,
        Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    }
.end annotation


# static fields
.field private static mActiveInterface:Ljava/lang/String; = null

.field private static mNetspeedSwitch:Z = false

.field private static mVpnConnected:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDexMode:Z

.field private mAttached:Z

.field private mBatteryIconDarkModeAlpha:F

.field private mBatteryIconLightModeAlpha:F

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDarkModeFillColor:I

.field private mLightModeFillColor:I

.field private mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

.field private mNetworkStats:Z

.field private mNetworkStatsHandler:Landroid/os/Handler;

.field private mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mNonAdaptedSingleToneColor:I

.field private mQsTintIntensity:F

.field private mRegisterReceiver:Z

.field private mScreenOn:Z

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mShouldUseQsTintColor:Z

.field mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "NetworkSpeedView"

    .line 79
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 407
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "NetworkSpeedView"

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 84
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 87
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 92
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    .line 93
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    .line 98
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 407
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "NetworkSpeedView"

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    .line 84
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    const/4 p3, 0x0

    .line 86
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 87
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 92
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    .line 93
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    .line 98
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$1;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/NetspeedView$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$2;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$3;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 407
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$4;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->initView()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 73
    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    sput-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mActiveInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getActiveInterface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    .line 73
    sput-boolean p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mVpnConnected:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    return p1
.end method

.method private getActiveInterface(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "connectivity"

    .line 419
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 418
    invoke-static {p0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 421
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 423
    iget-object p0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "NetworkSpeedView"

    const-string p1, "RemoteException"

    .line 426
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 269
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_light_mode_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_battery_dark_mode_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_light_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->status_bar_battery_frame_dark_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    return-void
.end method

.method private registerListener()V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    .line 180
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    .line 185
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private setNetworkSpeed()V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetspeedSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetspeedSwitch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStats:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->addObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/16 v0, 0x8

    .line 280
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mRegisterReceiver:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->isDexMode:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->registerListener()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOn:Z

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkStatsHandler:Landroid/os/Handler;

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setNetworkSpeed()V

    .line 217
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 218
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 254
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    .line 255
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    if-eqz p3, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mQsTintIntensity:F

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 257
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconLightModeAlpha:F

    iget p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mBatteryIconDarkModeAlpha:F

    sub-float/2addr p3, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 258
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 259
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mLightModeFillColor:I

    iget p3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mDarkModeFillColor:I

    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->getColorForDarkIntensity(FII)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedSingleToneColor:I

    .line 260
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    if-eqz p1, :cond_5

    .line 261
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 p2, 0x1f

    invoke-interface {p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p1

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void

    .line 265
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNonAdaptedSingleToneColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    .line 239
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 240
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_netspeed_size:I

    .line 244
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 245
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    mul-float/2addr v1, v0

    .line 243
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_netspeed_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 227
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->unregisterListener()V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNetworkSpeedManager:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->deleteObserver(Ljava/util/Observer;)V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mAttached:Z

    .line 232
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 233
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 202
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 203
    sget v0, Lcom/android/systemui/R$id;->contentView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    return-void
.end method

.method public setForceQsTintColor(ZF)V
    .locals 1

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mShouldUseQsTintColor:Z

    .line 223
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mQsTintIntensity:F

    .line 224
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    const v0, -0x42000001    # -0.12499999f

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
