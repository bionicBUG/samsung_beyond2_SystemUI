.class public Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;,
        Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;,
        Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;,
        Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;,
        Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;
    }
.end annotation


# static fields
.field public static SIZE_ICON_CACHE:I

.field private static sLoader:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

.field public static sLocalBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAppInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field mBlackListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDrawableFactory:Landroid/util/IconDrawableFactory;

.field mFavoriteApps:Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mIconMaxSize:I

.field mIconSize:I

.field mIntrinsicListLock:Ljava/lang/Object;

.field mLaunchApps:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

.field mLauncherAppsCallback:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

.field private mMainHandler:Landroid/os/Handler;

.field mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field mPm:Landroid/content/pm/PackageManager;

.field private mState:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

.field public mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateBlackListPostLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLocalBlackList:Ljava/util/ArrayList;

    .line 56
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLocalBlackList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLocalBlackList:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x50

    .line 86
    sput v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->SIZE_ICON_CACHE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBlackListMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mMainHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    .line 676
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    .line 245
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->NOT_LOADED:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->setState(Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->initLruCache()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 251
    sget v0, Lcom/android/systemui/R$dimen;->appdock_icon_max_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconMaxSize:I

    .line 252
    sget v0, Lcom/android/systemui/R$dimen;->appdock_list_ui_item_icon_size:I

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconSize:I

    .line 253
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 256
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-AppDockAppListLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    .line 261
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    .line 263
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockAppListLoader$1;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLauncherAppsCallback:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    .line 264
    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLauncherAppsCallback:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->registerLauncherCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mUpdateBlackListPostLoading:Z

    .line 281
    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$2;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->registerResizeModeChangedFromBlackListListener(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)V

    .line 314
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLaunchApps:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    .line 315
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mFavoriteApps:Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->updateAppInfoIsBlackList(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->setState(Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->removeIconCacheAndNotify()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->forcePreload()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->hideIcon(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->removeDrawableCache(Ljava/lang/String;)V

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private disableVisibleTasks(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getVisibleTasks()Ljava/util/List;

    move-result-object v1

    .line 429
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 430
    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 431
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 433
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 434
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 435
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    .line 444
    new-instance v4, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 445
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 446
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 444
    invoke-static {v5, v6, v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makeKeyAsString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_2
    new-instance v3, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 452
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 451
    invoke-static {v5, v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->makePackageKeyAsString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 458
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isSupportMultiInstance()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 461
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;

    .line 462
    iget-boolean v6, v5, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;->isExistSameActivity:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getPackageKey()Ljava/lang/String;

    move-result-object v6

    .line 463
    :goto_4
    iget-object v5, v5, Lcom/android/systemui/appdock/model/AppDockAppListLoader$VisibleCheckKey;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    const-string v5, "disable item key=%s"

    .line 464
    invoke-static {v5, v2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    goto :goto_3

    .line 469
    :cond_7
    invoke-virtual {p1, v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setDisabled(Z)V

    goto :goto_2

    .line 472
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method private forcePreload()V
    .locals 1

    .line 708
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 709
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->NOT_LOADED:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->setState(Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V

    .line 710
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLoader:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLoader:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    .line 72
    :cond_0
    sget-object p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->sLoader:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    return-object p0
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private hideIcon(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    .line 892
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "com.samsung.systemui.metadata.mwapplist.HIDE_ICON"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLruCache()V
    .locals 2

    .line 527
    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->SIZE_ICON_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic lambda$getGridAppList$0(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Z
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isBlackList()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getList$1(Ljava/util/List;Lcom/android/systemui/appdock/model/AppDockItemInfo;)Z
    .locals 3

    .line 381
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->isBlackList()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private needToReduceSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 833
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconMaxSize:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconMaxSize:I

    if-le p1, p0, :cond_0

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

.method private removeDrawableCache(Ljava/lang/String;)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeIconCacheAndNotify()V
    .locals 1

    .line 714
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->clearIconCache()V

    .line 720
    invoke-direct {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->forcePreload()V

    .line 721
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;

    invoke-direct {v0}, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method private setState(Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mState:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    return-void
.end method

.method private updateAppInfoIsBlackList(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 3

    .line 320
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBlackListMap:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 321
    iget-object v2, p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s is blacklist."

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setIsBlackList(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearIconCache()V
    .locals 0

    .line 546
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public enlargeBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .line 840
    iget v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconSize:I

    .line 843
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 844
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 846
    instance-of v3, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_0

    .line 847
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/PaintDrawable;

    .line 848
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 849
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 850
    :cond_0
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 852
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 853
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 854
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_1

    .line 855
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_1
    :goto_0
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    if-le v1, v2, :cond_2

    int-to-float v1, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    if-le v2, v1, :cond_3

    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    :cond_3
    move v1, v0

    .line 870
    :goto_1
    iget v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconSize:I

    .line 873
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 875
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 876
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v5, v2, v0

    .line 878
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v1

    .line 879
    div-int/lit8 v2, v2, 0x2

    .line 881
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 882
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v0, v5

    add-int/2addr v1, v2

    .line 883
    invoke-virtual {p1, v5, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 885
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 886
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 888
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p3, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 743
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 747
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 748
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 752
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    .line 753
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 752
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 775
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x10d0000

    .line 776
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 779
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->needToEnlarge(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->enlargeBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 784
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->needToReduceSize(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 788
    iget p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconMaxSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 790
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 791
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 796
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mFavoriteApps:Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    return-object p0
.end method

.method public getGridAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    sget-object v1, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;->INSTANCE:Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$iB9qF1uYAm9pY1UEnZCJIPfmJpM;

    .line 341
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    .line 342
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->disableVisibleTasks(Ljava/util/List;)V

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    .line 343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getList(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIntrinsicListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 358
    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mFavoriteApps:Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->extractAppInfos(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 365
    new-instance v4, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v4, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(I)V

    .line 366
    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->appdock_edit_header_favorites:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setHeaderTitle(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 370
    invoke-virtual {v5, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 377
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLaunchApps:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mTempList:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->restore(Landroid/content/Context;Ljava/util/List;)V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLaunchApps:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->getAppInfos(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 380
    new-instance v5, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$maZwWBn3E-BPuveMvDEs1wswJqg;

    invoke-direct {v5, v2}, Lcom/android/systemui/appdock/model/-$$Lambda$AppDockAppListLoader$maZwWBn3E-BPuveMvDEs1wswJqg;-><init>(Ljava/util/List;)V

    .line 394
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x6

    if-nez p1, :cond_1

    .line 397
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 398
    :cond_1
    new-instance v6, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(I)V

    .line 399
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 402
    new-instance v6, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-direct {v6, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(I)V

    .line 403
    iget-object v3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->appdock_edit_header_recents:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setHeaderTitle(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 407
    invoke-virtual {v6, v7}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 413
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x6

    if-ge v3, v6, :cond_3

    .line 414
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 418
    invoke-direct {p0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->disableVisibleTasks(Ljava/util/List;)V

    .line 420
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 421
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getState()Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mState:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    return-object p0
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mMwm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadAppInfoData(Lcom/android/systemui/appdock/model/AppDockItemInfo;)Ljava/lang/Runnable;
    .locals 1

    .line 497
    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    return-object p0

    .line 502
    :cond_0
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    .line 517
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method needToEnlarge(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 829
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconSize:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mIconSize:I

    if-ge p1, p0, :cond_0

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

.method public final onBusEvent(Lcom/android/systemui/appdock/event/IconChangedEvent;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IconChangedEvent"

    .line 697
    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-direct {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->removeIconCacheAndNotify()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/LaunchAppEvent;)V
    .locals 2

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchAppEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/appdock/event/LaunchAppEvent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mLaunchApps:Lcom/android/systemui/appdock/model/AppDockLaunchApps;

    iget-object p1, p1, Lcom/android/systemui/appdock/event/LaunchAppEvent;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockLaunchApps;->add(Ljava/lang/String;)Z

    return-void
.end method

.method public preload(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V
    .locals 4

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->addCallback(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 478
    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mState:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "state=%s"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    sget-object v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$5;->$SwitchMap$com$android$systemui$appdock$model$AppDockAppListLoader$State:[I

    iget-object v2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mState:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    new-instance p1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTask;-><init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    new-array p0, v3, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 481
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPostExecute()V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->removeCallback(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPreExecute()V

    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
