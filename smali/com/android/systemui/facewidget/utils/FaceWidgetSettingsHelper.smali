.class public Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;
.super Ljava/lang/Object;
.source "FaceWidgetSettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field private static final DEFAULT_PAGES_ORDER:[Ljava/lang/String;

.field private static final SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field private static final WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;


# instance fields
.field private mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mContentObserverHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field private mFaceWidgetSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mLastPageKeyOrder:Ljava/lang/String;

.field private mLastPageOrder:Ljava/lang/String;

.field private final mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "servicebox_music"

    const-string v1, "servicebox_calendar"

    const-string v2, "servicebox_alarm"

    .line 52
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/net/Uri;

    const-string v2, "additional_information_val"

    .line 72
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "add_info_music_control"

    .line 73
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "add_info_today_schedule"

    .line 74
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "add_info_alarm"

    .line 75
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "face_widget_order"

    .line 76
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "lockscreen_aod_staying_music_page"

    .line 77
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string/jumbo v2, "user_setup_complete"

    .line 78
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    new-array v1, v7, [Landroid/net/Uri;

    const-string/jumbo v2, "white_cover_wallpaper"

    .line 102
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "ultra_powersaving_mode"

    .line 103
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "easy_mode_switch"

    .line 104
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "emergency_mode"

    .line 105
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "dualclock_menu_settings"

    .line 131
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "homecity_timezone"

    .line 132
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "high_text_contrast_enabled"

    .line 133
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "time_12_24"

    .line 134
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "roaming_clock_option"

    .line 135
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "face_widgets_option"

    .line 136
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v8

    const-string/jumbo v2, "use_iris_firstlock"

    .line 137
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "face_without_swipe_to_unlock"

    .line 138
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "intelligentscan_without_swipe_to_unlock"

    .line 139
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/facewidget/FaceWidgetController;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    .line 149
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 151
    new-instance p1, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$KnSos0MlwmwSU_oMwpFaNVwqCbk;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$KnSos0MlwmwSU_oMwpFaNVwqCbk;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 186
    new-instance p1, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$mN-_2C3u-SEVC3Lxqy8pJIOcrk8;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$mN-_2C3u-SEVC3Lxqy8pJIOcrk8;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 207
    new-instance p1, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$_ZIXa2EK8H-AO6aQnSZV3m_Se78;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/utils/-$$Lambda$FaceWidgetSettingsHelper$_ZIXa2EK8H-AO6aQnSZV3m_Se78;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;Ljava/lang/String;I)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    return-object p0
.end method

.method private isRemoteViewsEnabled(Ljava/lang/String;)Z
    .locals 5

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "FaceWidgetSettingsHelper"

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRemoteViewsEnabled() remoteKey = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", hashKey = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", enabled = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    monitor-exit v0

    return p0

    .line 306
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRemoteViewsEnabled() there is no data, remoteKey = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetSettingsHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception p0

    .line 306
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isSettingValueEnabled(Ljava/lang/String;I)Z
    .locals 1

    .line 313
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 236
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string v3, "FaceWidgetSettingsHelper"

    const-string v4, "addSettingsObserver() %s %s %s"

    invoke-static {v3, v4, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    if-eqz v3, :cond_0

    .line 241
    iget-object v4, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    :cond_0
    new-instance v9, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;

    iget-object v5, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 261
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;I)Z

    move-result p3

    .line 262
    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 264
    iget-object p3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p3, :cond_2

    .line 265
    iget-object p3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p3, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    .line 268
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p0, p1, v1, v9, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "  FaceWidgetSettingsHelper"

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "    - observed: "

    .line 417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 419
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getFaceWidgetPageOrderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getFaceWidgetPageOrder()Ljava/lang/String;

    move-result-object p0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaceWidgetPageOrder() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    sget-object p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ";"

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public getPagesOrder()[Ljava/lang/String;
    .locals 2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getFaceWidgetPageOrder()Ljava/lang/String;

    move-result-object p0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPagesOrder() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    sget-object p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, ";"

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPagesOrderForCurrentUser()Ljava/lang/String;
    .locals 2

    .line 336
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "face_widget_order"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNotDefinedSettingValue(Ljava/lang/String;)Z
    .locals 2

    .line 317
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v0, -0x63

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageEnabled(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "servicebox_clock"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const-string v0, "clone_clock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "servicebox_music"

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetMusicPage()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "servicebox_calendar"

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetTodaysPage()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "servicebox_alarm"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetAlarmPage()Z

    move-result p0

    return p0

    .line 363
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->isRemoteViewsEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public synthetic lambda$new$0$FaceWidgetSettingsHelper(Landroid/net/Uri;)V
    .locals 4

    .line 152
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "FaceWidgetSettingsHelper"

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    .line 153
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetTodaysPage()Z

    move-result p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChanged() faceWidget calendar page"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addFlags(I)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeFlags(I)V

    .line 167
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_6

    .line 168
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V

    goto :goto_2

    .line 170
    :cond_3
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getFaceWidgetPageOrder()Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged() page order = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    .line 176
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_6

    .line 177
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V

    goto :goto_2

    .line 180
    :cond_4
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 181
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->onSetupCompleted()V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "onChanged() faceWidget individual switches"

    .line 154
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_6

    .line 156
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$new$1$FaceWidgetSettingsHelper(Landroid/net/Uri;)V
    .locals 3

    .line 187
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FaceWidgetSettingsHelper"

    if-eqz v0, :cond_0

    const-string p1, "onChanged() white wallpaper info"

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_2

    .line 192
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 196
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 197
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "onChanged() each mode"

    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_2

    .line 201
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$FaceWidgetSettingsHelper(Landroid/net/Uri;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_0

    .line 210
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public registerListener()V
    .locals 3

    const-string v0, "FaceWidgetSettingsHelper"

    const-string v1, "registerListener"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v1, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public removeSettingsObserver(Ljava/lang/String;)V
    .locals 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSettingsObserver() key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    monitor-exit v0

    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 281
    iget-object v2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_1

    .line 287
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetController;->removeRemoteViews(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 284
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetPageKeyOrder()V
    .locals 1

    const-string v0, ""

    .line 371
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    return-void
.end method

.method public saveCurrentFaceWidgetResourceIds(Ljava/lang/String;)V
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentFaceWidgetResourceIds() ids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "face_widget_res_id"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public saveCurrentFaceWidgetsOrder(Ljava/lang/String;)V
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentFaceWidgetsOrder() order = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "face_widget_order"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public saveCurrentPageKeyListForAOD(Ljava/lang/String;)V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentPageKeyListForAOD() order = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPageKeyOrder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    .line 379
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "aod_lock_share_page_key_order"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setSettingValuedEnabled(Ljava/lang/String;Z)Z
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener()V
    .locals 2

    const-string v0, "FaceWidgetSettingsHelper"

    const-string/jumbo v1, "unregisterListener"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mFaceWidgetSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method
