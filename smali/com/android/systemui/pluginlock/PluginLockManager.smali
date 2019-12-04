.class public Lcom/android/systemui/pluginlock/PluginLockManager;
.super Ljava/lang/Object;
.source "PluginLockManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBasicCallback:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;

.field private mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

.field private final mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field private mCurrentPluginValue:I

.field private mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

.field private mIsDynamicEnabled:Z

.field private mIsDynamicLockData:Z

.field private mIsRotateAllowed:Z

.field private mIsRotateMenuHide:Z

.field private final mLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/pluginlock/PluginLockInstanceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private mPluginLockContext:Landroid/content/Context;

.field private final mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

.field private mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field private mRemovedPackageName:Ljava/lang/String;

.field private mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

.field private mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

.field private mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

.field private final mUris:[Landroid/net/Uri;

.field private mUserId:I

.field private mViewMode:I

.field private final mVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    .line 94
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mVisibleMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateMenuHide:Z

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateAllowed:Z

    .line 106
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    .line 107
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mViewMode:I

    .line 108
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    const/4 v2, 0x0

    .line 114
    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 124
    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicLockData:Z

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lockstar_enabled"

    .line 128
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 129
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUris:[Landroid/net/Uri;

    .line 131
    new-instance v1, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$B9DewmloX3TaacpRWSNAd-Xkuy8;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$B9DewmloX3TaacpRWSNAd-Xkuy8;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 155
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 163
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$2;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 346
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$3;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mBasicCallback:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;

    const-string v1, "PluginLockManager"

    const-string v2, "PluginLockManager()"

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    .line 208
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 209
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 210
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 211
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pluginlock/PluginLockManager;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->onFolderStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->onStartedWakingUp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockClock;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockClock;)Lcom/android/systemui/pluginlock/component/PluginLockClock;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockHelpText;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockNotification;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockSecure;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockSwipe;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->onLocaleChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/model/DynamicLockData;)Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicLockData:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pluginlock/PluginLockManager;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pluginlock/PluginLockManager;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/pluginlock/PluginLockManager;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateAllowed:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateMenuHide:Z

    return p1
.end method

.method private addDumpEvent(Ljava/lang/String;)V
    .locals 9

    const-string v0, "plugin_lock_event_dump"

    const-string v1, "PluginLockManager"

    .line 1477
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 1490
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    new-array v4, v3, [Ljava/lang/String;

    .line 1493
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v6, v1

    .line 1494
    :goto_0
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 1495
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    move v6, v7

    goto :goto_0

    .line 1497
    :cond_1
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "line.separator"

    if-lt v6, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_3

    .line 1501
    :try_start_1
    aget-object v6, v4, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v6, :cond_3

    .line 1505
    aget-object v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1508
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1511
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private disableForcedIfNeed()Z
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    .line 699
    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableForcedIfNeed() disabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 701
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(ZZ)V

    return v0

    :cond_0
    return v2
.end method

.method private getDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1544
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1546
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1547
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFbeFile(Z)Ljava/io/File;
    .locals 5

    .line 1224
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/user_de/0/com.android.systemui/files/fresh_pack/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1226
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1227
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 1228
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 1230
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "colors"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    .line 1232
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fbe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 1

    .line 215
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object v0
.end method

.method private isEnabledFromSettingHelper()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabledFromSettingHelper, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    move-result p0

    return p0
.end method

.method private isPluginLockPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.dynamiclock"

    .line 1558
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.mateagent"

    .line 1559
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onFolderStateChanged(Z)V
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1368
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onFolderStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onLocaleChanged()V
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onLocaleChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1357
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onStartedWakingUp()V
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedWakingUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1345
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setDefaultCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putPluginInstanceToMap Map size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", packageName "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetConfigs()V
    .locals 2

    const/4 v0, 0x1

    .line 1436
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateAllowed:Z

    const/4 v0, 0x0

    .line 1437
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateMenuHide:Z

    .line 1439
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    .line 1440
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScreenOrientation(Z)V

    .line 1441
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setViewMode(I)V

    .line 1442
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBlur(Z)V

    :cond_0
    return-void
.end method

.method private resetDynamicLockData(Z)V
    .locals 2

    const/4 p1, 0x0

    .line 1447
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1449
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1450
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetDynamicLockData() reconnectReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz v0, :cond_2

    .line 1453
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->reset(Z)V

    .line 1455
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz v0, :cond_3

    .line 1456
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    .line 1458
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    if-eqz v0, :cond_4

    .line 1459
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->reset(Z)V

    .line 1461
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz v0, :cond_5

    .line 1462
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->reset(Z)V

    .line 1463
    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    .line 1465
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz v0, :cond_6

    .line 1466
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->reset(Z)V

    .line 1468
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz v0, :cond_7

    .line 1469
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 1471
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz p0, :cond_8

    .line 1472
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->reset(Z)V

    :cond_8
    return-void
.end method

.method private setLatestPluginInstance(Z)V
    .locals 12

    .line 936
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 938
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLatestPluginInstance map size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", owner:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PluginLockManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v5, 0x0

    .line 946
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-wide v6, v5

    move-object v5, v3

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 947
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 948
    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_2

    .line 949
    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v6, v5

    move-object v5, v8

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_5

    .line 955
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 956
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result p1

    .line 957
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 958
    rem-int/lit8 v0, v0, 0xa

    if-ne v0, v2, :cond_4

    const/4 v2, 0x2

    .line 960
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLatestPluginInstance() set value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 964
    invoke-direct {p0, v3}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 965
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setPluginInstance(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockContext:Landroid/content/Context;

    .line 796
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 797
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 798
    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 799
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 801
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    goto :goto_0

    .line 803
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPluginInstance() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 805
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 806
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 807
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockContext:Landroid/content/Context;

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz v0, :cond_2

    .line 810
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz v0, :cond_3

    .line 813
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 815
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-eqz v0, :cond_4

    .line 816
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz v0, :cond_5

    .line 819
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    if-eqz v0, :cond_6

    .line 822
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 824
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz v0, :cond_7

    .line 825
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 827
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz v0, :cond_8

    .line 828
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 830
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz v0, :cond_9

    .line 831
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 833
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_a

    .line 834
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    :cond_a
    return-void
.end method

.method private updateEnabledState(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 298
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 299
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEnabledState getPluginLockValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-nez p1, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v4

    .line 304
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEnabledState() isDynamicMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isEnabledFromSetting = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 307
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    return-void
.end method

.method private updatePluginLockMode(ZZ)V
    .locals 9

    if-eqz p2, :cond_0

    .line 708
    iget v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 709
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    .line 711
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateEnabledState(Z)V

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePluginLockMode()\n - isEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n - pluginValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n - wasDynamicLockEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n - mIsDynamicEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 718
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 719
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 722
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 723
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 724
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 725
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 726
    invoke-virtual {v4, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_1

    .line 730
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 731
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 732
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 733
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePluginLockMode() enabled key = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->setPluginInstance(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 736
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_5

    .line 737
    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    .line 738
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDynamicLock()V

    .line 741
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz p1, :cond_d

    .line 742
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    goto/16 :goto_3

    .line 748
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 749
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->resetConfigs()V

    if-eqz v1, :cond_7

    .line 751
    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-nez p1, :cond_7

    .line 752
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->resetDynamicLockData(Z)V

    .line 754
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_7

    .line 755
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDynamicLock()V

    .line 759
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/16 v5, 0x7530

    const/16 v6, 0x4e20

    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    .line 761
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 764
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 765
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePluginLockMode() disabled key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 767
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    :cond_a
    if-eq v0, v6, :cond_8

    if-ne v0, v5, :cond_b

    goto :goto_2

    :cond_b
    if-nez v0, :cond_c

    .line 775
    invoke-virtual {v4, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_2

    :cond_c
    if-nez p2, :cond_8

    .line 778
    invoke-virtual {v4, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 779
    invoke-direct {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    goto :goto_2

    .line 786
    :cond_d
    :goto_3
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCurrentPluginValue:I

    return-void
.end method


# virtual methods
.method public clearVisibleMap()V
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "PluginLockManager event:"

    .line 1553
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mCr:Landroid/content/ContentResolver;

    const-string p1, "plugin_lock_event_dump"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getClockGravity()I
    .locals 0

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz p0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->getClockGravity()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getClockPaddingEnd()I
    .locals 0

    .line 1102
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz p0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->getClockPaddingEnd()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getClockPaddingStart()I
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz p0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->getClockPaddingStart()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getClockScale()F
    .locals 0

    .line 1109
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockClock;

    if-eqz p0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->getClockScale()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mBasicCallback:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;

    if-eqz p0, :cond_0

    .line 331
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;->getDynamicLockData()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 4

    const/4 v0, 0x1

    .line 1140
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(Z)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1142
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1146
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    .line 1152
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1153
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1158
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 1152
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    .line 1158
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    .line 1159
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1163
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 1165
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1169
    :cond_1
    :goto_4
    new-instance p0, Landroid/app/SemWallpaperColors;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/SemWallpaperColors;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getFbeWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(Z)Ljava/io/File;

    move-result-object v0

    const-string v1, "PluginLockManager"

    if-eqz v0, :cond_0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFbeWallpaper path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getFbeWallpaper null"

    .line 1250
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFbeWallpaperPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1130
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1133
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getHelpTextMarginBottom()I
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-eqz p0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->getHelpTextMarginBottom()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNonSwipeMode()I
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz p0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNonSwipeModeAngle()I
    .locals 0

    .line 1203
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz p0, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeModeAngle()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x2d

    return p0
.end method

.method public getNotiCardBottomPaddingOffset()I
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiCardBottomPaddingOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiCardNumbers()I
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiCardNumbers()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiCardTopPadding()I
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiCardTopPadding()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiIconPaddingStart()I
    .locals 0

    .line 1026
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiIconPaddingStart()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiIconPaddingStartOffset()I
    .locals 0

    .line 1041
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiIconPaddingStartOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiIconPaddingTop()I
    .locals 0

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiIconPaddingTop()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotiIconPaddingTopOffset()I
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz p0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->getNotiIconPaddingTopOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNotificationNumbers(II)I
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->computeMaxKeyguardNotifications(III)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPluginLock()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method public getSecureMode()I
    .locals 0

    .line 1210
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz p0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->getSecureMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getServiceBoxTopPadding()I
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    if-eqz p0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->getServiceBoxTopPadding()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getServiceBoxVisibility()I
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mServiceBox:Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    if-eqz p0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->getServiceBoxVisibility()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getViewMode()I
    .locals 1

    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mViewMode:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1175
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 0

    .line 1123
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 0

    .line 1116
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWallpaperUpdateStyle()I
    .locals 0

    .line 1182
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getUpdateStyle()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDynamicLockEnabled()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicWallpaperEnabled()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFbeWallpaperAvailable()Z
    .locals 2

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFbeWallpaperVideo()Z
    .locals 3

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeFile(Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v2, "video"

    .line 292
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public isHelpTextInvisible()Z
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->isHelpTextInvisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockStarEnabled()Z
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsDynamicLockData:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotateMenuHide()Z
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mIsRotateMenuHide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShortcutInvisible()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->isShortcutInvisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoWallpaperEnabled()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isVideoWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible(I)Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$PluginLockManager()V
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(ZZ)V

    return-void
.end method

.method public synthetic lambda$new$1$PluginLockManager(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "PluginLockManager"

    if-nez p1, :cond_0

    const-string/jumbo p0, "uri null"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "lockstar_enabled"

    .line 136
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "lockstar_enabled changed"

    .line 137
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->disableForcedIfNeed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$XaVJ5c6pgc36VnMcLvUkVAwcKW0;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/-$$Lambda$PluginLockManager$XaVJ5c6pgc36VnMcLvUkVAwcKW0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->updatePluginLockMode(ZZ)V

    goto :goto_0

    :cond_2
    const-string v1, "emergency_mode"

    .line 143
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ultra_powersaving_mode"

    .line 144
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isEnabledFromSettingHelper()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 146
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "UPS or Emergency mode enabled"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 p1, 0x4e20

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const-string p0, "PluginLockManager"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1274
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1276
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 1277
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1278
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1280
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1281
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1284
    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 1285
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v4

    .line 1286
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1287
    iget v4, v4, Landroid/graphics/Point;->y:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-lt p1, v3, :cond_0

    int-to-float v5, v3

    int-to-float v4, v4

    div-float/2addr v5, v4

    cmpl-float v4, v5, v6

    if-lez v4, :cond_1

    .line 1292
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    :cond_0
    int-to-float v4, p1

    int-to-float v5, v5

    div-float v5, v4, v5

    cmpl-float v4, v5, v6

    if-lez v4, :cond_1

    .line 1295
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_0
    int-to-float v6, v4

    :cond_1
    float-to-int v4, v6

    .line 1298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmapForScreenSize() ratio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", sample"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 1300
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1301
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1303
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1304
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, p1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1305
    invoke-static {v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1306
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_1
    move-object v0, v4

    goto :goto_2

    :cond_2
    :try_start_3
    const-string p1, "Can\'t load dynamic lock file"

    .line 1308
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_2
    const-string v2, "Can\'t load dynamic lock wallpaper!"

    .line 1311
    invoke-static {p0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_3

    .line 1315
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1317
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    move-object v0, v1

    :cond_4
    :goto_4
    return-object v0
.end method

.method public notifyWallpaperChanged(I)V
    .locals 5

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1391
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWallpaperChanged(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->addDumpEvent(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isStickyRecoverType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->recover()V

    .line 1401
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManager$4;-><init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V

    .line 1414
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-array v1, v1, [Landroid/net/Uri;

    const-string v4, "lockscreen_wallpaper_transparent"

    .line 1415
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1414
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->recover()V

    :try_start_0
    const-string v0, "onLockWallpaperChanged() called"

    .line 1420
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->addDumpEvent(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onLockWallpaperChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1423
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "onLockWallpaperChanged() exception catch"

    .line 1424
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->addDumpEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 1428
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz p0, :cond_2

    .line 1429
    invoke-interface {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAodTransitionEnd()V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1381
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onAodTransitionEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1383
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSemBackupStatusChanged(III)V
    .locals 3

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSemBackupStatusChanged which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v2

    .line 1531
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "which"

    .line 1532
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "status"

    .line 1533
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key"

    .line 1534
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1535
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1536
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onSemBackupStatusChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1539
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    :try_start_0
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff(Landroid/content/Context;)Z

    move-result p0

    .line 1331
    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedGoingToSleep(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1333
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeInstance(ILcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 8

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInstance() reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 892
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 893
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v7

    if-ne v7, p2, :cond_0

    .line 894
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez p1, :cond_2

    .line 896
    invoke-virtual {v5, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 899
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin Package removed"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->addDumpEvent(Ljava/lang/String;)V

    .line 901
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    :cond_1
    move v4, v6

    :cond_2
    if-eqz p2, :cond_3

    .line 904
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 905
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    .line 908
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 914
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeInstance() pkgName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", map size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    .line 917
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 919
    iput-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 920
    iput-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 921
    iput-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockContext:Landroid/content/Context;

    .line 922
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 924
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 926
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 928
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v4, :cond_7

    .line 931
    invoke-direct {p0, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->setLatestPluginInstance(Z)V

    :cond_7
    return-void
.end method

.method public setCallbacks()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mBasicCallback:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    :cond_0
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 3

    .line 850
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onReady()V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re install after deleting package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->addDumpEvent(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    if-eqz v0, :cond_1

    .line 859
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onDataCleared()V

    :cond_1
    const/4 v0, 0x0

    .line 861
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mRemovedPackageName:Ljava/lang/String;

    .line 865
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 866
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 867
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 868
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 870
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    .line 871
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result p1

    .line 873
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLockInstancePolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 874
    rem-int/lit8 v1, v0, 0xa

    if-ne v1, v2, :cond_3

    const/4 v2, 0x2

    :cond_3
    add-int/2addr p1, v2

    goto :goto_0

    :cond_4
    add-int/2addr p1, v2

    .line 879
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPluginInstanceState now:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_5
    return-void
.end method

.method public setQsExpansion(F)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setQsExpansion(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 0

    .line 975
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mViewMode:I

    return-void
.end method

.method public setVisible(II)V
    .locals 0

    .line 979
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public updateWhiteWallpaperState(Z)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->updateWhiteWallpaperState(Z)V

    :cond_0
    return-void
.end method
