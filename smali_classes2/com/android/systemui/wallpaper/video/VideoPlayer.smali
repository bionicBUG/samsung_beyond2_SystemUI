.class public Lcom/android/systemui/wallpaper/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mIsPendingStarted:Z

.field private mIsPrepared:Z

.field private mIsPreview:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mMediaControlHandler:Landroid/os/Handler;

.field private mOccluded:Z

.field mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private mRootView:Landroid/view/View;

.field private mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field private mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field protected mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field protected mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

.field private mVideoScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;ZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;ZLandroid/view/View;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOccluded:Z

    .line 67
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    .line 68
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 69
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 71
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    .line 165
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    .line 166
    iput-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    .line 167
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOccluded:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/samsung/android/media/SemMediaPlayer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initSeekTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->dismissSurface()V

    return-void
.end method

.method private dismissSurface()V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/wallpaper/video/SurfaceController;->setScaleSurface(FFFFII)V

    .line 209
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;
    .locals 12

    const-string v0, ".Preview"

    const-string v1, ""

    .line 433
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 v9, 0x280

    const/16 v10, 0x1e0

    .line 435
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {v8, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    const/16 p1, 0x12

    .line 443
    invoke-virtual {v8, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x13

    .line 444
    :try_start_1
    invoke-virtual {v8, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x18

    .line 445
    :try_start_2
    invoke-virtual {v8, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "90"

    .line 446
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "270"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 450
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 451
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 447
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 448
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v10

    .line 458
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v4

    .line 460
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v4, v1

    move v3, v10

    move-object v11, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v11

    goto :goto_6

    :catch_3
    move-exception p2

    move-object v2, v1

    move-object v4, v2

    move v3, v10

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_6

    .line 440
    :cond_3
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p2, :cond_4

    move-object p2, v0

    goto :goto_3

    :cond_4
    move-object p2, v1

    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getVideoScreenSize() file is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p0, 0x0

    .line 458
    :try_start_6
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_a

    :catch_5
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    move-object v4, v2

    :goto_5
    move v3, v10

    .line 454
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v5, "getVideoScreenSize() occur exception"

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 458
    :try_start_8
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    move-object p1, p2

    move-object p2, v2

    move-object v2, v4

    .line 464
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_5

    goto :goto_9

    :cond_5
    move-object v0, v1

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoScreenSize() w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", h = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", r = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v9, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 458
    :goto_a
    :try_start_9
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    :goto_b
    throw p0
.end method

.method private initSeekTime()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    const-string v2, "VIDEO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 133
    :goto_0
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isVideoWallpaperEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 138
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_PLAY_RANDOM_POSITON:Z

    if-eqz v0, :cond_4

    .line 139
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getDuration()I

    move-result v1

    if-lez v1, :cond_3

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 145
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    goto :goto_2

    .line 146
    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    goto :goto_2

    .line 153
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    :goto_2
    return-void
.end method

.method private releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    const-string v2, ".Preview"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseMediaPlayer() mp = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    .line 382
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "releaseMediaPlayer() failed stop"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private setSurface()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const-string v1, ".Preview"

    const-string v2, ""

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setSurface() mediaPlayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setSurface() mSurfaceInfo is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurface() surface is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 276
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 279
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_5

    .line 277
    :cond_7
    :goto_4
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v0, "setSurface() is not valid"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private showSurface(FF)V
    .locals 10

    .line 213
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p2, :cond_0

    const-string p2, ".Preview"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateSurfaceInfo() mVideoScreenSize is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->dismissSurface()V

    return-void

    .line 219
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    cmpg-float v2, v1, v0

    if-gtz v2, :cond_3

    div-float/2addr v0, v1

    :cond_3
    move v5, v0

    .line 222
    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v6, p1, v0

    mul-float v7, p2, v0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v8, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget v9, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/wallpaper/video/SurfaceController;->setScaleSurface(FFFFII)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget p2, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget p0, p0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-interface {p1, p2, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private updateSurfaceVisibility(II)V
    .locals 3

    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->showSurface(FF)V

    goto :goto_1

    .line 198
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceVisibility() width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , screen state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mOccluded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOccluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOccluded:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->showSurface(FF)V

    goto :goto_1

    .line 200
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->dismissSurface()V

    :goto_1
    return-void
.end method


# virtual methods
.method public cancelReleaseResource()Z
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    const-string v2, ".Preview"

    const-string v3, ""

    if-nez v0, :cond_1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cancelReleaseResource() mediaPlayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cancelReleaseResource() success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 401
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cancelReleaseResource() fail"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDuration()I
    .locals 5

    .line 407
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const-string v1, ".Preview"

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getDuration() mediaPlayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 412
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v4, :cond_3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "seekTo() mediaPlayer is not prepared"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 418
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->getDuration()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed getDuration"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v3
.end method

.method public initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 10

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    const-string v2, ".Preview"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFile() filePath = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fd = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 233
    :cond_1
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v4, 0x88bc

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 237
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v4, 0x9088

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 241
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    .line 244
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 247
    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    :goto_1
    return-void

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p2, :cond_4

    move-object p2, v2

    goto :goto_2

    :cond_4
    move-object p2, v3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video file is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mSemMediaPlayer is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    return-void
.end method

.method public isPreview()Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    return p0
.end method

.method public releaseResource(Z)V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const-string v1, ".Preview"

    const-string v2, ""

    if-nez v0, :cond_1

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "releaseResource() mediaPlayer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 369
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    goto :goto_2

    .line 372
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 p1, 0x3e8

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const-string v1, ".Preview"

    const-string v2, ""

    if-nez v0, :cond_1

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "seekTo() mediaPlayer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v3, :cond_3

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "seekTo() mediaPlayer is not prepared"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 353
    :cond_3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 355
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed seekTo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOccluded:Z

    return-void
.end method

.method public setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mScreenState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-void
.end method

.method public startDrawing()V
    .locals 1

    const/4 v0, -0x1

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing(I)V

    return-void
.end method

.method public startDrawing(I)V
    .locals 6

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    const-string v1, ".Preview"

    const-string v2, ""

    if-nez v0, :cond_1

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "startDrawing() mediaPlayer is not prepared"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_3

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "startDrawing() mediaPlayer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 299
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v3, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDrawing() mIsPrepared = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", playTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    .line 303
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    if-lez p1, :cond_7

    .line 308
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    int-to-long v4, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "startDrawing() failed start"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public stopDrawing()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const-string v1, ".Preview"

    const-string v2, ""

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "stopDrawing() mediaPlayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    if-eqz v0, :cond_2

    .line 324
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v3, "stopDrawing() Do not play for previous request."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 329
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "stopDrawing() failed pause"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateSurfaceInfo(II)V
    .locals 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    const-string v2, ".Preview"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurfaceInfo() width = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_2

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "updateSurfaceInfo() mSurfaceInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 188
    :cond_2
    iput p1, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    .line 189
    iput p2, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceVisibility(II)V

    return-void
.end method

.method public updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceInfo() surfaceInfo is null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    .line 176
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-eqz p1, :cond_2

    .line 177
    iget v0, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget p1, p1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceVisibility(II)V

    :cond_2
    return-void
.end method
