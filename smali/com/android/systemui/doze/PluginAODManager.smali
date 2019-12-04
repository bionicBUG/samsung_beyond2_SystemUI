.class public Lcom/android/systemui/doze/PluginAODManager;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;,
        Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;,
        Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/systemui/doze/PluginAODManager;


# instance fields
.field private mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

.field private mAODMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

.field private mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field private mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

.field private mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field private mCoverFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

.field private mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

.field private mCoverPluginContext:Landroid/content/Context;

.field private mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field private final mHandler:Landroid/os/Handler;

.field private final mLiveClockCallback:Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;

.field private mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

.field private mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field private mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

.field private mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

.field private mNotiLogManager:Lcom/android/systemui/doze/AODLogManager;

.field private final mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

.field private mNotificationTotalCount:I

.field private final mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final mRemoteViewsCallback:Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager$Callback;

.field private mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

.field private mShowAODNotifications:Z

.field private final mSmartAlerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field protected final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field private final mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

.field private mUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mVisibleNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mZigzagPosition:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/PluginAODManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 84
    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 87
    const-class v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-direct {v0}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/android/systemui/doze/AODLogManager;

    const-string v1, "AOD_Notification"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/AODLogManager;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/doze/AODLogManager;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationTotalCount:I

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    .line 118
    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$nWaDVauxfnq8MAWBj9W12f-9kJQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$nWaDVauxfnq8MAWBj9W12f-9kJQ;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLiveClockCallback:Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;

    .line 130
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$1;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    .line 155
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$2;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 181
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$3;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    .line 226
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$4;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    .line 290
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$5;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mRemoteViewsCallback:Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager$Callback;

    .line 303
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$6;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    .line 312
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 313
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 315
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$7;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 324
    new-instance v0, Lcom/android/systemui/doze/PluginAODManager$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/PluginAODManager$8;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->unregisterCoverMusicListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/clockpack/PluginClockPack;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/PluginAODManager;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationTotalCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    return-object p0
.end method

.method private getAODScreenOrientation(Landroid/content/Context;)I
    .locals 8

    const-string p0, "content://com.samsung.android.app.aodservice.provider/settings/aod_screen_orientation"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 893
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 896
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 897
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string p0, "PluginAODManager"

    .line 898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAODScreenOrientation : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 905
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 902
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 905
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static getInstance()Lcom/android/systemui/doze/PluginAODManager;
    .locals 2

    .line 335
    sget-object v0, Lcom/android/systemui/doze/PluginAODManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/PluginAODManager;->sInstance:Lcom/android/systemui/doze/PluginAODManager;

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {v1}, Lcom/android/systemui/doze/PluginAODManager;-><init>()V

    sput-object v1, Lcom/android/systemui/doze/PluginAODManager;->sInstance:Lcom/android/systemui/doze/PluginAODManager;

    .line 339
    :cond_0
    sget-object v1, Lcom/android/systemui/doze/PluginAODManager;->sInstance:Lcom/android/systemui/doze/PluginAODManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isLandscapeForCurrentDisplay(Landroid/content/Context;)Z
    .locals 0

    .line 935
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 634
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 635
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "smart_alert_title"

    const-string v1, ""

    .line 636
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private logSmartAlert(Ljava/lang/String;)V
    .locals 6

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    const/16 v4, 0x5b

    .line 748
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    .line 750
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    .line 754
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 758
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onUpdateSmartAlert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    .line 759
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 761
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " showingKeys "

    .line 762
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "UserHandle"

    const-string v2, ""

    .line 765
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/doze/AODLogManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/AODLogManager;->add(Ljava/lang/String;)V

    return-void
.end method

.method private logVisibleNotification(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_0

    const/16 v3, 0x5b

    .line 715
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    .line 717
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "[updateVisibleNotifications] "

    .line 725
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    .line 726
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 728
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " showingKeys "

    .line 730
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "UserHandle"

    const-string v1, ""

    .line 734
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 736
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/doze/AODLogManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/AODLogManager;->add(Ljava/lang/String;)V

    return-void
.end method

.method private registerUpdateMonitor(Landroid/content/Context;)V
    .locals 0

    .line 347
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private removeUpdateMonitor(Landroid/content/Context;)V
    .locals 0

    .line 351
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private unregisterCoverMusicListener(Landroid/content/Context;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    if-eqz v0, :cond_0

    .line 704
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->removeCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 706
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    return-void
.end method

.method private updateSystemUIConfiguration(Landroid/content/Context;)V
    .locals 1

    .line 363
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getEmergencyStateChangedReason()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    return-void
.end method


# virtual methods
.method public applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 662
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    :cond_0
    return-void
.end method

.method public chargingAnimStarted(Z)V
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 784
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onChargingAnimStarted(Z)V

    goto :goto_0

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    .line 786
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onChargingAnimStarted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableStatusBar(I)V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "statusbar"

    .line 941
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "PluginAODManager"

    if-nez v0, :cond_1

    const-string p0, "disableStatusBar() : Could not get status bar manager"

    .line 945
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableStatusBar() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotiLogManager:Lcom/android/systemui/doze/AODLogManager;

    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AODLogManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAODClockType()I
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 828
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODClockType()I

    move-result p0

    return p0
.end method

.method public getAODClockView(Z)Landroid/view/View;
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 821
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODClockContainer(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAODNeedScreenOff(Landroid/content/Context;)Z
    .locals 8

    const-string p0, "content://com.samsung.android.app.aodservice.provider/settings/aod_need_screen_off"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 916
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 918
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 919
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 920
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "PluginAODManager"

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAODNeedScreenOff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move p0, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 928
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p1

    move p0, v0

    .line 925
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_4

    :cond_2
    move p1, v0

    :goto_4
    return p1

    :goto_5
    if-eqz v1, :cond_3

    .line 928
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public getAnalogLiveClockEncoder()Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    invoke-direct {v0}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    .line 692
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAnalogLiveClockEncoder:Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    return-object p0
.end method

.method public getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    invoke-direct {v0}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    .line 699
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDigitalLiveClockEncoder:Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    return-object p0
.end method

.method public getSysUIConfig()Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    return-object p0
.end method

.method public getZigzagPosition()Landroid/graphics/Point;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getZigzagPosition()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    .line 795
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public hideChargingInfoByFinger(J)V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 840
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    :cond_0
    return-void
.end method

.method public isPlugged()Z
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

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

.method public isSameOrientation(Landroid/content/Context;)Z
    .locals 4

    .line 859
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 863
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->getAODScreenOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isLandscapeForCurrentDisplay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eq v0, v2, :cond_3

    .line 865
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isLandscapeForCurrentDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public synthetic lambda$new$0$PluginAODManager(ILandroid/os/Bundle;)[B
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getDigitalLiveClockEncoder()Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/aod/liveclock/DigitalLiveClockEncoder;->getImageDataByDuploV32FromNative(Landroid/os/Bundle;)[B

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->getAnalogLiveClockEncoder()Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/aod/liveclock/AnalogLiveClockEncoder;->getAnalogImageDataForDreamDeviceFromNative(Landroid/os/Bundle;)[B

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$sendIntent$1$PluginAODManager(Landroid/content/Intent;)V
    .locals 0

    .line 682
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 683
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->sendIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public needControlScreenOff(Landroid/content/Context;)Z
    .locals 4

    .line 873
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->getAODNeedScreenOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 879
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->isSameOrientation(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    return v0
.end method

.method public needDozeAlwaysOn()Z
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 800
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->needDozeAlwaysOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClockPageTransitionEnded()V
    .locals 0

    .line 832
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->onClockPageTransitionEnded()V

    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/-$$Lambda$PluginAODManager$82QWbygHpf686-xwnjUFbuIvPbk;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAODPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/aod/PluginAOD;)V
    .locals 1

    .line 367
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    .line 368
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p2, :cond_4

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 370
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor(Landroid/content/Context;)V

    .line 373
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getLiveClockManager()Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLiveClockCallback:Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;)V

    .line 374
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 377
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 378
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 381
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mUICallback:Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    .line 383
    sget-boolean p2, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz p2, :cond_4

    .line 384
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    if-nez p2, :cond_1

    .line 385
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    .line 387
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;)V

    .line 389
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    if-nez p2, :cond_2

    .line 390
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    .line 392
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V

    .line 394
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 395
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    invoke-virtual {p2, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->addCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    .line 397
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    if-nez p2, :cond_3

    .line 398
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    .line 400
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;)V

    .line 404
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_5

    .line 405
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor(Landroid/content/Context;)V

    .line 406
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 408
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 410
    sget-boolean p2, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz p2, :cond_5

    .line 411
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 412
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMusicControllerListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->removeCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    :cond_5
    return-void
.end method

.method public setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 777
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getRemoteViewsManager()Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;->setAODRemoteViews(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public setClockPackplugin(Lcom/android/systemui/plugins/clockpack/PluginClockPack;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    return-void
.end method

.method public setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginViewCover;)V
    .locals 1

    .line 423
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 424
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    .line 425
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p2, :cond_4

    .line 426
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 427
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor(Landroid/content/Context;)V

    .line 432
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 433
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 436
    sget-boolean p2, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz p2, :cond_5

    .line 437
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    if-nez p2, :cond_1

    .line 438
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-direct {p2, p0}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    .line 440
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverFaceWidgetCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;)V

    .line 442
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    if-nez p2, :cond_2

    .line 443
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    .line 445
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mServiceBoxCalendarCallback:Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V

    .line 447
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    if-nez p2, :cond_3

    .line 448
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    .line 450
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;)V

    .line 452
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getRemoteViewsManager()Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mRemoteViewsCallback:Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager$Callback;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 455
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    .line 457
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_6

    .line 458
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->unregisterCoverMusicListener(Landroid/content/Context;)V

    .line 460
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public setDozeHost(Lcom/android/systemui/doze/DozeHost;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method

.method public setIsDozing(ZZ)V
    .locals 0

    .line 671
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    .line 672
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    :cond_0
    return-void
.end method

.method public setShowAODNotifications(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    return-void
.end method

.method public setSubScreenPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 1

    .line 467
    sget-boolean v0, Lcom/android/systemui/Rune;->COVER_SUPPORT_SUB_DISPLAY:Z

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 472
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p2, :cond_3

    .line 473
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->updateSystemUIConfiguration(Landroid/content/Context;)V

    .line 474
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-nez p2, :cond_1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor(Landroid/content/Context;)V

    .line 478
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    .line 479
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 481
    sget-boolean p2, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz p2, :cond_3

    .line 482
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    if-nez p2, :cond_2

    .line 483
    new-instance p2, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    .line 485
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMusicContentCallback:Lcom/android/systemui/doze/PluginAODManager$MusicContentCallback;

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;)V

    .line 488
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_4

    .line 489
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->unregisterCoverMusicListener(Landroid/content/Context;)V

    .line 490
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public shouldShowAODNotifications()Z
    .locals 0

    .line 511
    iget-boolean p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mShowAODNotifications:Z

    return p0
.end method

.method public updateActiveNotifications(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 546
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/PluginAODManager;->isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "updateActiveNotifications"

    .line 551
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/PluginAODManager;->logSmartAlert(Ljava/lang/String;)V

    .line 553
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_3

    .line 556
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    goto :goto_1

    .line 557
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_4

    .line 558
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateActiveNotifications(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 553
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_1

    .line 652
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateVisibleNotifications(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;I)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 524
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mVisibleNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    iput p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationTotalCount:I

    .line 526
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    .line 531
    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    .line 535
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/PluginAODManager;->logVisibleNotification(Ljava/util/List;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 526
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
