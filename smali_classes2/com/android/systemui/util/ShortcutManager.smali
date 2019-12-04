.class public Lcom/android/systemui/util/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/ShortcutManager$ShortcutData;,
        Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field public static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFirstUpdated:Z

.field private mIsPermDisabled:Z

.field private mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mSb:Ljava/lang/StringBuilder;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutVisibleForMDM:Z

.field private mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.samsung.android.game.gamehome"

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    .line 97
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.sec.android.app.camera.Camera"

    const-string v4, "com.sec.android.app.camera"

    .line 107
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.dialer"

    const-string v2, "com.samsung.android.dialer.DialtactsActivity"

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    .line 127
    iput-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    new-array v1, v0, [Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    .line 129
    iput-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/android/systemui/util/ShortcutManager;->mIsFirstUpdated:Z

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    .line 145
    new-instance v2, Lcom/android/systemui/util/ShortcutManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/ShortcutManager$1;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 166
    new-instance v2, Lcom/android/systemui/util/ShortcutManager$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/ShortcutManager$2;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 195
    new-instance v2, Lcom/android/systemui/util/ShortcutManager$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/ShortcutManager$3;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v2, Lcom/android/systemui/util/ShortcutManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/util/ShortcutManager$4;-><init>(Lcom/android/systemui/util/ShortcutManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 278
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    .line 280
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "floating"

    .line 279
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/keyguard/R$dimen;->shortcut_icon_floating_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/keyguard/R$dimen;->shortcut_icon_default_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    .line 283
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 285
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 286
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    .line 287
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 288
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 289
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 293
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    new-instance v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/util/ShortcutManager$ShortcutData;-><init>(Lcom/android/systemui/util/ShortcutManager$1;)V

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [Landroid/net/Uri;

    const-string v2, "lock_application_shortcut"

    .line 297
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "set_shortcuts_mode"

    .line 298
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const-string v1, "current_sec_appicon_theme_package"

    .line 299
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, p1, v0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 302
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 304
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 305
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 306
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 307
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 308
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "package"

    .line 309
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 312
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 313
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 314
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 315
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 316
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v7, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 320
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 321
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/ShortcutManager;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/util/ShortcutManager;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/util/ShortcutManager;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/util/ShortcutManager;->mIsPermDisabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/util/ShortcutManager;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/util/ShortcutManager;->mIsPermDisabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/util/ShortcutManager;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getmKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/util/ShortcutManager;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/util/ShortcutManager;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/util/ShortcutManager;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateIconOnlyToCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/ShortcutManager;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/util/ShortcutManager;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->handleUpdateShortcuts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 418
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 419
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 421
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 422
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 424
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, p2

    .line 426
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 427
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 344
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 602
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 601
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 603
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 604
    sget-object p0, Lcom/android/systemui/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/util/ShortcutManager;
    .locals 1

    .line 907
    const-class v0, Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/ShortcutManager;

    return-object v0
.end method

.method private getSettingValues()Z
    .locals 11

    .line 354
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_7

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingValues("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ShortcutManager"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ";"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 362
    array-length v1, v0

    const/4 v6, 0x2

    if-ge v1, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    move v1, v2

    move v6, v1

    .line 370
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    const/4 v7, 0x4

    if-ge v1, v7, :cond_5

    .line 371
    aget-object v7, v0, v1

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v1, 0x1

    .line 372
    aget-object v8, v0, v7

    if-eqz v8, :cond_1

    aget-object v8, v0, v7

    const-string v9, "NoUnlockNeeded"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 373
    iget-object v8, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    div-int/lit8 v9, v1, 0x2

    aget-object v10, v8, v9

    iput v3, v10, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    .line 374
    aget-object v8, v8, v9

    aget-object v9, v0, v7

    aget-object v7, v0, v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    goto :goto_1

    .line 376
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    div-int/lit8 v9, v1, 0x2

    aget-object v8, v8, v9

    iput v2, v8, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    .line 377
    aget-object v8, v0, v7

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_2

    .line 380
    iget-object v10, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    aget-object v7, v0, v7

    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 382
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 386
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v7, v7, v9

    iput-object v8, v7, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_4

    move v6, v3

    goto :goto_1

    .line 393
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v7, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    div-int/lit8 v8, v1, 0x2

    aget-object v9, v7, v8

    iput-object v4, v9, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 395
    aget-object v7, v7, v8

    iput-object v4, v7, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_5
    move v2, v6

    goto :goto_3

    .line 363
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 364
    aget-object v0, p0, v3

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 365
    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 366
    aget-object p0, p0, v3

    iput-object v4, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    return v2

    .line 399
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 400
    aget-object v0, p0, v3

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 401
    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 402
    aget-object p0, p0, v3

    iput-object v4, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :goto_3
    return v2
.end method

.method private getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    :cond_0
    iget p1, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    invoke-direct {p0, v0, p1, p1}, Lcom/android/systemui/util/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getmKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
    .locals 3

    .line 970
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10cfa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x304d9746

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "Dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_3
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 972
    :cond_4
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private handleUpdateShortcuts()V
    .locals 4

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->getSettingValues()Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    if-ne v3, v2, :cond_0

    .line 568
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILjava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_0
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/util/ShortcutManager;->mIsFirstUpdated:Z

    return-void
.end method

.method private isShortcutMasterEnabled()Z
    .locals 0

    .line 938
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutMasterEnabled()Z

    move-result p0

    return p0
.end method

.method private resetShortcut(I)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    .line 409
    aget-object v1, v0, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 412
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method private sendUpdateIconOnlyToCallback(I)V
    .locals 2

    .line 880
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 881
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    .line 883
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutIconOnly(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdateShortcutViewToCallback(I)V
    .locals 2

    .line 871
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 872
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    .line 874
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .locals 1

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 902
    invoke-interface {p1, p0}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateShortcut(ILandroid/content/ComponentName;)V
    .locals 2

    .line 447
    new-instance v0, Lcom/android/systemui/util/ShortcutManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/ShortcutManager$5;-><init>(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V

    .line 512
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateShortcut(ILjava/lang/String;)V
    .locals 2

    .line 516
    new-instance v0, Lcom/android/systemui/util/ShortcutManager$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;-><init>(Lcom/android/systemui/util/ShortcutManager;I)V

    .line 554
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "ShortcutManager state:"

    .line 944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  CurrentUserId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Shortcut count = 2"

    .line 947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Master switch = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutMasterEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  disabled shortcut by MDM = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->shouldDisableShortcutWithMdm()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 951
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    array-length p3, p3

    if-ge p1, p3, :cond_2

    .line 952
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Shortcut "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    iget-object p3, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p3, p3, p1

    if-nez p3, :cond_0

    const-string p3, "    null"

    .line 955
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 958
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    iget-object v0, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isSuspended = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isLockTaskPermitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/util/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public getApplicationLabel(I)Ljava/lang/String;
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 758
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Shortcut"

    return-object p0

    .line 761
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 2

    if-gez p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 616
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "th = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is camera package"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 624
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_3

    .line 626
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_3
    const-string p1, "android.intent.category.LAUNCHER"

    .line 628
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10010000

    .line 629
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 643
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getShortcutHintText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_tts_shortcut_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutProperty(I)I
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 984
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    return p0
.end method

.method public getSuspended(Ljava/lang/String;)Z
    .locals 1

    .line 681
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_0

    .line 683
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 685
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuspended() - Not found package name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasShortcutForLeft()Z
    .locals 4

    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    if-ne v3, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 667
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public hasShortcutForRight()Z
    .locals 3

    const/4 v0, 0x1

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v2, v1, v0

    iget v2, v2, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    if-ne v2, v0, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 655
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public isLeftShortcutForCamera()Z
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isLeftShortcutForLiveIcon()Z
    .locals 1

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result p0

    return p0
.end method

.method public isLeftShortcutForPhone()Z
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 694
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 695
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRightShortcutForCamera()Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isRightShortcutForLiveIcon()Z
    .locals 1

    const/4 v0, 0x1

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result p0

    return p0
.end method

.method public isRightShortcutForPhone()Z
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 581
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.android.app.camera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSamsungCameraPackageLockTaskPermitted()Z
    .locals 1

    const-string v0, "com.sec.android.app.camera"

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSamsungPhonePackage(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 593
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.dialer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.dialer.DialtactsActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public isShortcutEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    return v0

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutMasterEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isShortcutForLiveIcion(I)Z
    .locals 4

    .line 734
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, p0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 737
    :cond_0
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 738
    sget-object p1, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 739
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public launchAffordanceForTask(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 990
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->excute()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 839
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "floating"

    .line 838
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->shortcut_icon_floating_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->shortcut_icon_default_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    .line 842
    invoke-virtual {p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .locals 3

    .line 846
    monitor-enter p0

    :try_start_0
    const-string v0, "ShortcutManager"

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut callback registered successfully, callback is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShortcutManager"

    const-string v1, "send updateShortcutView to registered callback"

    .line 851
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    .line 854
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shouldDisableShortcutWithMdm()Z
    .locals 0

    .line 916
    iget-boolean p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public unregisterCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .locals 4

    .line 858
    monitor-enter p0

    const/4 v0, 0x0

    .line 859
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v1, "ShortcutManager"

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback removed successfully , callback was : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateShortcuts()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateShortcutsIcon(I)V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->shortcutProperty:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 775
    new-instance v0, Lcom/android/systemui/util/ShortcutManager$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ShortcutManager$7;-><init>(Lcom/android/systemui/util/ShortcutManager;I)V

    new-array p0, v2, [Ljava/lang/Integer;

    .line 798
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 800
    :cond_0
    new-instance v0, Lcom/android/systemui/util/ShortcutManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ShortcutManager$8;-><init>(Lcom/android/systemui/util/ShortcutManager;I)V

    .line 828
    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/Integer;

    .line 829
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
