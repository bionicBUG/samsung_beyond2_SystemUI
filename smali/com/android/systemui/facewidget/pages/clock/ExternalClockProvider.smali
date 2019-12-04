.class public Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;
.super Landroid/content/BroadcastReceiver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$PluginContextWrapper;,
        Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;,
        Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;
    }
.end annotation


# static fields
.field private static final AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final FIXED_CLOCK_TYPES:[I

.field private static final LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final TYPO_CLOCK_TYPES:[I

.field private static sExternalClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;


# instance fields
.field private mCachedAODClockType:I

.field private mCachedClockType:I

.field private final mClockCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mContextForUser:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastColorUpdatedTime:J

.field private mLastTypeChangedTime:J

.field private mLastUpdatedClockColor:Ljava/lang/String;

.field private mLastUpdatedClockType:Ljava/lang/String;

.field private mPaletteInfo:[I

.field private mParentClassLoader:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 543
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_package"

    .line 87
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_trial_package"

    .line 88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->TYPO_CLOCK_TYPES:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 107
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->FIXED_CLOCK_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0xc35f
        0xc360
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0x7
        0x9
        0xc35f
        0xc360
        0xc35d
        0xc35a
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 148
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    .line 125
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedClockType:I

    .line 127
    iput v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    .line 145
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v2, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$ExternalClockProvider$hu7SAL8VvnsETlyEXKYRioyvGC0;

    invoke-direct {v2, p0}, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$ExternalClockProvider$hu7SAL8VvnsETlyEXKYRioyvGC0;-><init>(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;)V

    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    const-string v2, "ExternalClockProvider"

    const-string v3, "ExternalClockProvider() created"

    .line 149
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    .line 154
    new-instance p1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 155
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 156
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    .line 157
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    sget-boolean v3, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    const-string v4, "com.samsung.android.app.aodservice"

    const-string v5, "com.samsung.android.app.clockpack"

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p1, v4, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    new-instance p1, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {p1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v3, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$1;-><init>(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;)V

    invoke-interface {p1, v3, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 181
    :goto_1
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    const-string v3, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    if-eqz p1, :cond_1

    .line 182
    invoke-direct {p0, v4, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_2

    .line 184
    :cond_1
    invoke-direct {p0, v5, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    .line 187
    :goto_2
    sget-boolean p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    if-eqz p1, :cond_2

    return-void

    .line 191
    :cond_2
    new-instance p1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$2;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$2;-><init>(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setSALogClockType()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setSALogClockColor()V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/net/Uri;

    .line 204
    sget-object v4, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v5, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 206
    sget-boolean v5, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v5, :cond_3

    sget-object v1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    :cond_3
    aput-object v1, v3, v4

    .line 208
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 211
    :try_start_1
    array-length v1, v3

    move v4, v6

    :goto_3
    if-ge v4, v1, :cond_5

    aget-object v5, v3, v4

    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {p0, v5, v6, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    const-string p0, "SecurityException occurred while registering com.samsung.android.app.clockpack.provider"

    .line 218
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;I)Landroid/content/Context;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->handleClockSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method private getAODClockType(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 513
    iget p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->internalGetAODClockType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    .line 517
    :cond_1
    iget p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    return p0
.end method

.method private getContextForUser(I)Landroid/content/Context;
    .locals 3

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;
    .locals 1

    .line 232
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    .line 235
    :cond_0
    sget-object p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    return-object p0
.end method

.method private getPaletteInfo()[I
    .locals 12

    const-string v0, "ExternalClockProvider"

    .line 579
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 586
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 588
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v7, -0x1

    :goto_0
    if-lez v7, :cond_2

    .line 589
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 590
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v1, v4

    .line 591
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v1, v3

    .line 592
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v1, v2

    .line 594
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    goto :goto_1

    .line 596
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPaletteInfo() wrong count: "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_4

    .line 598
    :try_start_2
    invoke-static {v6, v5}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 585
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v6

    if-eqz v5, :cond_3

    .line 598
    :try_start_4
    invoke-static {p0, v5}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 599
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    new-array p0, v2, [Ljava/lang/Object;

    .line 602
    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v4

    aget v2, v1, v3

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v3

    const-string v2, "getPaletteInfo() = %d %d"

    .line 602
    invoke-static {v0, v2, p0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getThemeClockPackage()Ljava/lang/String;
    .locals 4

    .line 701
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "getThemeClockPackage() packageName="

    const-string v3, "ExternalClockProvider"

    if-nez v1, :cond_0

    .line 703
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (TRIAL)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 706
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private handleClockPackageUpdated()V
    .locals 2

    const-string v0, "ExternalClockProvider"

    const-string v1, "handleClockPackageUpdated()"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    const-string v1, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.app.aodservice"

    .line 275
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.clockpack"

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-nez v0, :cond_1

    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    const/4 v0, 0x0

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v1, :cond_2

    .line 289
    invoke-interface {v1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;->onClockPackageChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private handleClockSettingsChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    .line 307
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    .line 308
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    .line 309
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 323
    :cond_1
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 325
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz p1, :cond_2

    .line 327
    invoke-interface {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;->onClockColorChanged()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setSALogClockColor()V

    goto :goto_3

    .line 331
    :cond_4
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 332
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_9

    .line 333
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz p1, :cond_5

    .line 335
    invoke-interface {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;->onAODClockStyleChanged()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_7

    .line 314
    invoke-interface {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;->onClockStyleChanged()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 318
    :cond_8
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "handleClockSettingsChanged clockType changed"

    .line 319
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setLastUpdatedClockType(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setSALogClockType()V

    :cond_9
    :goto_3
    return-void
.end method

.method private internalGetAODClockType()I
    .locals 7

    .line 553
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 555
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 556
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 557
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 558
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 555
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_0

    .line 560
    :try_start_3
    invoke-static {v1, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    invoke-static {v1, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 561
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 565
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalGetAODClockType() = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ExternalClockProvider"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private internalGetClockType()I
    .locals 8

    const-string v0, "ExternalClockProvider"

    const/16 v1, 0x9

    .line 534
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 535
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 537
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-lez v3, :cond_1

    .line 538
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 539
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_1

    .line 541
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalGetClockType() wrong count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_3

    .line 543
    :try_start_2
    invoke-static {v2, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 534
    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz p0, :cond_2

    .line 543
    :try_start_4
    invoke-static {v2, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    :cond_3
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalGetClockType() = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isMonoClock(I)Z
    .locals 0

    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTypoClockType(I)Z
    .locals 5

    .line 729
    sget-object v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->TYPO_CLOCK_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static synthetic lambda$hu7SAL8VvnsETlyEXKYRioyvGC0(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->handleClockPackageUpdated()V

    return-void
.end method

.method private loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 5

    .line 391
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 395
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 396
    new-instance v1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$PluginContextWrapper;

    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v2, 0x1

    .line 398
    invoke-static {p1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    .line 400
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0, v1}, Lcom/samsung/android/clockpack/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t load plugin: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 1

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 p2, 0x200

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 381
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 382
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "ExternalClockProvider"

    const-string p1, "queryPlugin() failed"

    .line 386
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private querySingleString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 713
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 714
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 715
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 713
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p0, :cond_0

    .line 717
    :try_start_3
    invoke-static {p1, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    throw v2

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    invoke-static {v1, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 718
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const-string p0, "null"

    .line 721
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method private sendRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastUpdatedClockColor(Ljava/lang/String;)V
    .locals 2

    .line 647
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastUpdatedClockColor:Ljava/lang/String;

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    const-string p0, "ExternalClockProvider"

    .line 649
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setLastUpdatedClockType(Ljava/lang/String;)V
    .locals 2

    .line 653
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastUpdatedClockType:Ljava/lang/String;

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    const-string p0, "ExternalClockProvider"

    .line 655
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSALogClockColor()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExternalClockProvider"

    const-string v3, "setSALogClockColor"

    .line 359
    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v1

    .line 361
    aget v2, v1, v0

    const-string v3, "9009"

    const-string v4, "lockscreen_pref"

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 365
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 366
    :cond_0
    aget v1, v1, v0

    if-ne v1, v5, :cond_1

    .line 367
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "Color picker"

    .line 368
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 369
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSALogClockType()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ExternalClockProvider"

    const-string v3, "setSALogClockType"

    .line 343
    invoke-static {v2, v3, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v1, :cond_0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string v3, "lockscreen_pref"

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "9008"

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockName(II)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin|CategoryException: getClockName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getAODClockType()I
    .locals 1

    const/4 v0, 0x0

    .line 525
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getAODClockType(Z)I

    move-result p0

    return p0
.end method

.method public getClockGroup(I)I
    .locals 1

    .line 660
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 662
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockGroup(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    .line 667
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getClockGroup() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getClockType()I
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockType(Z)I

    move-result p0

    return p0
.end method

.method public getClockType(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 505
    iget p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedClockType:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->internalGetClockType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedClockType:I

    .line 509
    :cond_1
    iget p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedClockType:I

    return p0
.end method

.method public getClockView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object p0

    return-object p0
.end method

.method public getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;
    .locals 7

    .line 487
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    const-string v1, "ExternalClockProvider"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 489
    :try_start_0
    invoke-interface {v0, p1, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockView(II)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v2

    const-string v0, "VERSION_CODE = %s / %d / %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x13

    .line 490
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    aput-object v2, v4, v3

    invoke-static {v1, v0, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const-string p0, "getClockView returns null"

    .line 496
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 498
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getDateColor()I
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const p0, -0x50506

    :goto_0
    return p0
.end method

.method public getDefaultClockType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method getLastUpdatedClockColor()Ljava/lang/String;
    .locals 3

    .line 639
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastColorUpdatedTime:J

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastUpdatedClockColor:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/util/LogUtil;->getMsg(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getLastUpdatedClockType()Ljava/lang/String;
    .locals 3

    .line 643
    iget-wide v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastTypeChangedTime:J

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mLastUpdatedClockType:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/util/LogUtil;->getMsg(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    const-class v1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.samsung.android.clockpack.plugins"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    return-object p0
.end method

.method public invalidCachedClockType()V
    .locals 1

    const/4 v0, -0x1

    .line 295
    iput v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedClockType:I

    .line 296
    iput v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mCachedAODClockType:I

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    return-void
.end method

.method public isThemeClockEnabled()Z
    .locals 0

    .line 697
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getThemeClockPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", action="

    const-string v2, "ExternalClockProvider"

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v3, "reason"

    .line 246
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->sendRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 255
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.app.aodservice"

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.app.clockpack"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_4
    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 260
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockPkgUpdatedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->sendRunnable(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public registerClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reloadDateColor()V
    .locals 9

    .line 758
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mPaletteInfo:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, -0x50506

    const/4 v1, 0x2

    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 764
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 765
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 766
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 763
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v4

    if-eqz v2, :cond_1

    .line 768
    :try_start_3
    invoke-static {v3, v2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v4

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v3, v2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 769
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDateColor() color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalClockProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object p0

    aput v0, p0, v1

    return-void
.end method

.method public setClockType(I)Z
    .locals 3

    .line 570
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lock_clock_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClockType() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExternalClockProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V
    .locals 3

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 682
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 683
    aget v0, v0, v2

    if-nez v1, :cond_0

    .line 686
    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 688
    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setCustomColor(I)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPreDefineOrCustomColor() type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", indexOrColor="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setLastUpdatedClockColor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public shouldUseDefaultColor()Z
    .locals 2

    .line 628
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p0

    .line 629
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    .line 630
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

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

.method public unregisterClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 431
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 4

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateClockColor() adaptiveColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalClockProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isMonoClock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 613
    iget v0, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    iget v1, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    iget v2, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    iget v3, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    .line 616
    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setLastUpdatedClockColor(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
