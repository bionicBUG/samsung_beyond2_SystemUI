.class public Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;
.super Ljava/lang/Object;
.source "FaceWidgetMusicController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;,
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;,
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;


# instance fields
.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDBSaveHandler:Landroid/os/Handler;

.field private mIsListeningStarted:Z

.field private mIsNoMusic:Z

.field private mIsSessionEnabled:Z

.field private mLastDBSavedTime:J

.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastMusicAppName:Ljava/lang/String;

.field private mLastMusicLyrics:Ljava/lang/String;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlaybackStateChangeListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

.field private mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSettingsValueCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mAppLabelMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsSessionEnabled:Z

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsNoMusic:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastDBSavedTime:J

    .line 85
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 550
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mPm:Landroid/content/pm/PackageManager;

    .line 162
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastDBSavedTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/app/PendingIntent;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsSessionEnabled:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsSessionEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->resetDataAndClear()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->saveCurrentDataToDB()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/media/MediaMetadata;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method private clearData()V
    .locals 2

    const-string v0, "FaceWidgetMusicController_LOCK"

    const-string v1, "clearData()"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "servicebox_music_last_title"

    const-string v1, ""

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "servicebox_music_last_artist"

    const-string v1, ""

    .line 365
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "servicebox_music_last_pkg"

    const-string v1, ""

    .line 366
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    goto :goto_0

    .line 373
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;
    .locals 2

    .line 187
    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sInstance:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    if-nez v0, :cond_1

    .line 188
    const-class v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sInstance:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sInstance:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    .line 192
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 194
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sInstance:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    return-object p0
.end method

.method private getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    if-eqz v0, :cond_0

    const-string p0, "launch session intent"

    .line 319
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "launch package intent"

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo p0, "there is no launch intent"

    .line 333
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v2
.end method

.method private loadLastInformation()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "servicebox_music_last_pkg"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 168
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "servicebox_music_last_title"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "servicebox_music_last_artist"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.TITLE"

    .line 180
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.ARTIST"

    .line 181
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 182
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLastInformation() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceWidgetMusicController_LOCK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/16 v2, 0x80

    .line 520
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 519
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 518
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "FaceWidgetMusicController_LOCK"

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMusicAppLabel() packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 526
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 529
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method private resetDataAndClear()V
    .locals 2

    const-string v0, "FaceWidgetMusicController_LOCK"

    const-string v1, "resetDataAndClear()"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string v0, ""

    const-string v1, "servicebox_music_last_title"

    .line 403
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "servicebox_music_last_artist"

    .line 404
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "servicebox_music_last_pkg"

    .line 405
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->loadLastInformation()V

    .line 408
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v0, :cond_1

    .line 410
    invoke-interface {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveCurrentDataToDB()V
    .locals 13

    .line 416
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCurrentDataToDB() mbr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceWidgetMusicController_LOCK"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "servicebox_music_last_pkg"

    const-string v3, "servicebox_music_last_artist"

    const-string v4, "servicebox_music_last_title"

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v0, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "android.media.metadata.ARTIST"

    invoke-virtual {v7, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/16 v7, 0xc8

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_2

    .line 424
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v5, :cond_3

    .line 427
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v7, :cond_3

    .line 428
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 431
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 432
    iget-object v7, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 436
    iget-wide v9, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastDBSavedTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveCurrentDataToDB() instantly, pkg = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", title = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", artist = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iput-wide v7, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastDBSavedTime:J

    goto :goto_2

    :cond_5
    const-string v1, "saveCurrentDataToDB() pending"

    .line 443
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-static {v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 445
    new-instance v2, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;

    invoke-direct {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;-><init>()V

    .line 446
    iput-object v0, v2, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->title:Ljava/lang/String;

    .line 447
    iput-object v5, v2, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->artist:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->pkgName:Ljava/lang/String;

    .line 449
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 450
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    const-string v0, "saveCurrentDataToDB() set Last music package as null as Media button receiver is null"

    .line 454
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 456
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    :cond_7
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 546
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startMusicStateListening()V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMusicStateListening() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    if-eqz v0, :cond_0

    .line 481
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    .line 485
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopMusicStateListening()V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMusicStateListening() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-enter p0

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    if-nez v0, :cond_0

    .line 494
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->removeOnPlaybackStateChangedListener()V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    .line 501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-ne v1, p1, :cond_1

    .line 218
    monitor-exit p0

    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-interface {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    .line 225
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->startMusicStateListening()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 222
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clearListeners()V
    .locals 2

    const-string v0, "FaceWidgetMusicController_LOCK"

    const-string v1, "clearListeners()"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    :cond_0
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastPlaybackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMediaMetaData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMusicApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMusicLyrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isSessionEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsSessionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isNoMusic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsNoMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    if-eqz p0, :cond_2

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getLastSavedSessionPackageName()Ljava/lang/String;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastSessionPackageName()Ljava/lang/String;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getLastSessionPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMusicPlaying()Z
    .locals 2

    .line 377
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isNoMusic()Z
    .locals 7

    .line 347
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 348
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 349
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->isUnsupportedApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    .line 350
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 351
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    aput-object v1, v5, v0

    const-string v0, "FaceWidgetMusicController_LOCK"

    const-string v1, "isNoMusic returns %s / %s %s %s"

    invoke-static {v0, v1, v5}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsNoMusic:Z

    if-eq v0, v4, :cond_4

    .line 354
    iput-boolean v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsNoMusic:Z

    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsNoMusic:Z

    if-eqz v0, :cond_4

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->clearData()V

    :cond_4
    return v4
.end method

.method launchMusicApp(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)Z
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchMusicApp() pk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 307
    invoke-interface {p1, p0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/app/PendingIntent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public onMusicClicked(I)V
    .locals 2

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->sendKeyToPlayer(I)V

    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v1, :cond_0

    .line 471
    invoke-interface {v1, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->onMusicButtonClicked(I)V

    goto :goto_0

    .line 474
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

.method public removeAllCacheData()V
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    .line 241
    :cond_1
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 243
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_3

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->stopMusicStateListening()V

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->removeAllCacheData()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requestCacheData(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCacheData() callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->isNoMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setLyrics(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setAppName(Ljava/lang/String;)V

    .line 267
    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->updateFaceWidgetMusicNotificationPkg(Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsSessionEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setSessionEnabled(Z)V

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setMusicSessionActivity(Landroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestLyrics()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->requestLyrics(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public sendKeyToPlayer(I)V
    .locals 21

    move-object/from16 v0, p0

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 280
    iget-object v13, v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x101

    move-object v1, v12

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-wide/from16 v19, v14

    move-object v14, v13

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v18

    invoke-virtual {v14, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 282
    iget-object v13, v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    new-instance v14, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v14

    move-wide/from16 v1, v19

    move-wide/from16 v3, v19

    move/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public updateSessions()V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mIsListeningStarted:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->mMonitor:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateSessions()V

    :cond_0
    return-void
.end method
