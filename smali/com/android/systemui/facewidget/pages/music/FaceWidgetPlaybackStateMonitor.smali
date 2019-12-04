.class public Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;
.super Ljava/lang/Object;
.source "FaceWidgetPlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;,
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;,
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;
    }
.end annotation


# instance fields
.field private final UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

.field private mActiveSessionPkgName:Ljava/lang/String;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mIsStarted:Z

.field private mIsUnsupportedAppTopController:Z

.field private mLastController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mObserverCb:Landroid/media/session/MediaController$Callback;

.field private mObserverControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 82
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$ObserveSessionCallback;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    .line 85
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 87
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    const-string v1, "com.samsung.android.app.soundpicker"

    const-string v2, "com.google.android.youtube"

    const-string v3, "com.google.android.videos"

    const-string v4, "com.android.server.telecom"

    const-string v5, "com.netflix.mediaclient"

    .line 91
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    .line 101
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 121
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->stop()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->start()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object p0
.end method

.method private getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Package: "

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Flags: "

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " State: "

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Metadata: "

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "null"

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ButtonReceiver: "

    .line 282
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v1

    .line 284
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private observeNonMetadataSessions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 247
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 253
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private releaseAllObservers()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 261
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendCurrentState()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_0

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getCurrentSessionPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionChanged(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const-string v2, "com.samsung.android.servicebox.mediasession.extra.LOCK_SCREEN_PENDING_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-interface {v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    .line 430
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionActivityChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method private sendMediaButtonEvent(Landroid/media/session/MediaController;Landroid/view/KeyEvent;)Z
    .locals 8

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaButtonEvent controller - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "send receiver using pending intent."

    .line 345
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v5, Landroid/content/Intent;

    const-string p1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 350
    invoke-virtual {v5, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 351
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "controller\'s pending intent canceled"

    .line 356
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "3rd media app is not registered. receiver is null"

    .line 361
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private start()V
    .locals 4

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string v1, "Start"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    if-eqz v1, :cond_0

    const-string p0, "Start -- return : already started"

    .line 291
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    .line 297
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v3, -0x2

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateSessions()V

    return-void
.end method

.method private stop()V
    .locals 2

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string v1, "Stop"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 6

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", current controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 372
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 375
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_0
    const-string p1, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string/jumbo v3, "updateController: no media controller"

    .line 378
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 380
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 382
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    .line 386
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_7

    .line 387
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {p1, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V

    goto :goto_1

    .line 389
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_4

    .line 390
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 392
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_5

    .line 393
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v1, :cond_6

    .line 394
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 395
    iput-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    goto :goto_0

    :cond_5
    const-string v3, "FaceWidgetPlaybackStateMonitor_LOCK"

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is supported in FaceWidgets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    .line 403
    :cond_6
    :goto_0
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$1;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 404
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 405
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    .line 406
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->sendCurrentState()V

    .line 411
    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  FaceWidgetPlaybackStateMonitor_LOCK"

    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mLastController : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    invoke-direct {p0, p3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mMediaController : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mIsUnsupportedAppTopController : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    is Start : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsStarted:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveSessionPackageName()Ljava/lang/String;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentSessionPackageName()Ljava/lang/String;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastSessionPackageName()Ljava/lang/String;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method isUnsupportedApp(Ljava/lang/String;)Z
    .locals 4

    .line 237
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 238
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Size: "

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 146
    invoke-direct {p0, v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->releaseAllObservers()V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveSessionsChanged() controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getLastSavedSessionPackageName()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    move-object v6, v5

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaController;

    if-nez v7, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-virtual {p0, v8}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->isUnsupportedApp(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not supported in FaceWidgets"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-boolean v10, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    .line 172
    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v6, v7

    :cond_4
    if-nez v2, :cond_5

    .line 176
    iget-object v9, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v9, :cond_5

    .line 177
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v9

    iget-object v11, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v11}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v2, v10

    .line 181
    :cond_5
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v9

    .line 182
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v10

    if-eqz v9, :cond_1

    if-nez v10, :cond_6

    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    goto :goto_1

    .line 193
    :cond_7
    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getState()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    goto :goto_2

    :cond_8
    if-nez v5, :cond_1

    move-object v5, v7

    goto :goto_1

    .line 195
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActiveSessionsChanged() catch playing session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-object v8, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v7}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    .line 206
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->observeNonMetadataSessions(Ljava/util/List;)V

    if-eqz v2, :cond_b

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActiveSessionsChanged() current session is alive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-void

    :cond_b
    if-eqz v5, :cond_c

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActiveSessionsChanged() catch top session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    .line 217
    invoke-direct {p0, v5}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_c
    if-eqz v6, :cond_e

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActiveSessionsChanged() catch latest session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    .line 224
    invoke-direct {p0, v6}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_d
    const-string p1, "onActiveSessionsChanged() no active session pkg"

    .line 228
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    .line 233
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public removeOnPlaybackStateChangedListener()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->stop()V

    return-void
.end method

.method public requestLyrics(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLyrics() metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 500
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    .line 506
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    const-string p1, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaButtonEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetPlaybackStateMonitor_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string p1, "sendMediaButtonEvent: KeyEvent is null"

    .line 321
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0

    return v1

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v2, :cond_2

    .line 326
    iget-boolean v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    if-nez v2, :cond_1

    const-string v2, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string v3, "send to SessionManager"

    .line 328
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    const/4 p0, 0x1

    .line 330
    monitor-exit v0

    return p0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/media/session/MediaController;Landroid/view/KeyEvent;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 338
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string v1, "addOnPlaybackStateChangedListener() : onPlaybackStateChangedListener"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->start()V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->sendCurrentState()V

    :cond_0
    return-void
.end method

.method public updateSessions()V
    .locals 3

    const-string v0, "FaceWidgetPlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "updateSessions()"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    return-void
.end method
