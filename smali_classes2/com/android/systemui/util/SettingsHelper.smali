.class public Lcom/android/systemui/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SettingsHelper$ItemMap;,
        Lcom/android/systemui/util/SettingsHelper$Item;,
        Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/util/SettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    .line 298
    new-instance v0, Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 300
    new-instance v0, Lcom/android/systemui/util/SettingsHelper$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$1;-><init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 333
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 335
    sput-object p0, Lcom/android/systemui/util/SettingsHelper;->sInstance:Lcom/android/systemui/util/SettingsHelper;

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->setUpSettingsItem()V

    .line 341
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$apbmXCb2kdRq692aqXS3vBFo2ys;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$apbmXCb2kdRq692aqXS3vBFo2ys;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 346
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** broadcastChange for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 701
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 704
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 705
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_0

    .line 707
    invoke-interface {v1, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 701
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    .line 611
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    return-object v0

    .line 614
    :cond_0
    sget-object v0, Lcom/android/systemui/util/SettingsHelper;->sInstance:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    :goto_0
    return-object v0
.end method

.method private readSettingsDB()V
    .locals 4

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 578
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapAll(Landroid/content/ContentResolver;)V

    .line 579
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readSettingsDB() COMPLETED elapsed= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 589
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->registerAllObserver()V

    .line 590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSettingsObserver() COMPLETED elapsed= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .locals 12

    .line 351
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v2, "System"

    const-string v3, "white_lockscreen_statusbar"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 352
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "white_lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 353
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 354
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_sub"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 355
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_transparent"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 356
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "sub_display_lockscreen_wallpaper_transparency"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 357
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "opne_theme_effect_lockscreen_wallpaper"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 358
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "dualclock_menu_settings"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 359
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "emergency_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 360
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "easy_mode_switch"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 361
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "ultra_powersaving_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 362
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "access_control_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 363
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "sidesync_source_connect"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 364
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "powersaving_switch"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 365
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "psm_switch"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 366
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "automatic_unlock"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 367
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "any_screen_running"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 368
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "set_shortcuts_mode"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 369
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_wallpaper_path"

    const-string v4, "String"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 370
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "theme_font_clock"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 371
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "theme_font_numeric"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 372
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "theme_font_system"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 373
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "time_12_24"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 374
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "homecity_timezone"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 375
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_theme_package_open_theme"

    const-string v4, "String"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 376
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_appicon_theme_package"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 377
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "current_sec_active_themepackage"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 378
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "airplane_mode_on"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 379
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "white_cover_wallpaper"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 380
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "low_power"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 381
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_show_notifications"

    const-string v4, "Int"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 382
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_screen_allow_private_notifications"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 383
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "speak_password"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 384
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "high_text_contrast_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 385
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "auto_swipe_main_user"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 386
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "shared_device_status"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 387
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "phone1_on"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 388
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "phone2_on"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 389
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_application_shortcut"

    const-string v4, "String"

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 390
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "tap_to_icon"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 391
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_fmm_Message"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 392
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_fmm_phone"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 393
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "show_button_background"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 394
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-static {}, Lcom/android/systemui/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "simple_status_bar"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 395
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "sem_perfomance_mode"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 396
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "additional_information_val"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 397
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_music_control"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 398
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_today_schedule"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 399
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "add_info_alarm"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 400
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "servicebox_page_gravity"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 401
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_servicebox_page_gravity"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 402
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "data_usage_reminder"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 403
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "action_memo_on_off_screen"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 404
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "screen_off_memo"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 405
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "lock_function_val"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 406
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "aod_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 407
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "rapid_key_input"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 408
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "white_lockscreen_navigationbar"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 409
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "face_widget_order"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 410
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "lockscreen_aod_staying_music_page"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 411
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "reserve_battery_on"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 412
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "n_digits_pin_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 413
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_hide_bar_enabled"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 414
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "system_locales"

    const-string v4, "String"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 415
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_battery_percentage"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 416
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "voicecall_type"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 417
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "show_keyboard_button"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 418
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "System"

    const-string v3, "lock_noticard_opacity"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 419
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "voicecall_type2"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 420
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_adaptive_color"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 421
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lock_clock_adaptive_colors"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 422
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "roaming_clock_option"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 423
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "face_widgets_option"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 424
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_notifications_option"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 425
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_minimizing_notification"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 426
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockstar_enabled"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 427
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "notification_text_color_inversion"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 428
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "knox_finger_print_plus"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 429
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "mobile_data_question"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 430
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "notification_freeform_menuitem"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 431
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_unlock_with_home_button"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 432
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "user_setup_complete"

    const-string v4, "Int"

    const/4 v6, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 433
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "isBikeMode"

    const-string v4, "Int"

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 434
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "missing_phone_lock"

    const-string v4, "String"

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 435
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_WOF:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "fingerprint_always_on"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 436
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "fingerprint_always_on_notification"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 438
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "use_iris_firstlock"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 439
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "intelligentscan_without_swipe_to_unlock"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 440
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "iris_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 441
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "face_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 442
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "intelligentscan_stay_on_lock_screen"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 443
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "display_cutout_hide_notch"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 448
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "enable_reserve_max_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 449
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "covert_on"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 453
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "screen_brightness_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 454
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "display_outdoor_mode"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 455
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "shown_max_brightness_dialog"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 456
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "pms_notification_panel_brightness_adjustment"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 458
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_NETWORK_INFORMATION:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "status_bar_show_network_information"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 463
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "lock_shortcut_type"

    const-string v4, "String"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 464
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lockscreen_show_shortcut"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 468
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "lift_to_wake"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 472
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "mode_ringer_time_on"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 476
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "reduce_animations"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 478
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "haptic_feedback_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 479
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "any_screen_running"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 487
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "sehome_portrait_mode_only"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 489
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "lock_screen_allow_rotation"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 491
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "call_auto_rotation"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 493
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigationbar_key_order"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 495
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_color"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 496
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const v0, -0xd0d0e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "Global"

    const-string v3, "navigationbar_current_color"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 497
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigationbar_use_theme_default"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 498
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "any_screen_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 499
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigation_bar_rotate_suggestion_enabled"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 500
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "Global"

    const-string v3, "navigationbar_key_position"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 503
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Secure"

    const-string v3, "game_double_swipe_enable"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 505
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "game_show_floating_icon"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 508
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_3

    .line 509
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_while_hidden"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 510
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_hint"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 511
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_detail_type"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 512
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_button_to_hide_keyboard"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 513
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_back_gesture_on_keyboard"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 514
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_block_gestures_with_spen"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 515
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "accessibility_display_magnification_navbar_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 516
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "show_a11y_button"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 517
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "one_handed_op_wakeup_type"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 518
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_back_gesture_sensitivity"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 519
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "navigation_bar_gesture_disabled_by_policy"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 523
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "assist_disclosure_enabled"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 526
    sget-boolean v0, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSISTANCE_APP_SETTING_POPUP:Z

    if-eqz v0, :cond_4

    .line 527
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "assistant"

    const-string v4, "String"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 528
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "voice_interaction_service"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 529
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Secure"

    const-string v3, "voice_recognition_service"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 539
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "enabled_accessibility_services"

    const-string v4, "String"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 540
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "bouncer_one_hand"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 541
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DISABLE_BIO_UNLOCK_VI:Z

    xor-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "screen_transition_effect"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 544
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v5, 0x0

    const-string v2, "Secure"

    const-string v3, "icon_blacklist"

    const-string v4, "String"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 548
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "System"

    const-string v3, "all_sound_off"

    const-string v4, "Int"

    move-object v0, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 553
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "finger_magnifier"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 557
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "System"

    const-string v3, "amplify_ambient_sound"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 560
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_5

    .line 561
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x0

    const-string v2, "Global"

    const-string v3, "two_register"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 562
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "two_account"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 563
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "two_call_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 564
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v2, "Global"

    const-string v3, "two_sms_enabled"

    const-string v4, "Int"

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 568
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "Secure"

    const-string v3, "fingerprint_sensor_block_popup_show_again"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    .line 571
    sget-boolean v0, Lcom/android/systemui/Rune;->APPDOCK_ENABLED:Z

    if-eqz v0, :cond_6

    .line 572
    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const/4 v6, 0x1

    const-string v2, "System"

    const-string v3, "multi_window_tray"

    const-string v4, "Int"

    move-object v0, v8

    move-object v1, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1679
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->dumpAll(Ljava/io/PrintWriter;)V

    .line 1681
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceBroadcastWhiteKeyguardWallpaper()V
    .locals 1

    const-string v0, "white_lockscreen_wallpaper"

    .line 1011
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public getAODFaceWidgetPageGravity()I
    .locals 1

    .line 1092
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "aod_servicebox_page_gravity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "current_sec_active_themepackage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackGestureSensitivityType()I
    .locals 1

    .line 1493
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_back_gesture_sensitivity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_Message"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .locals 1

    .line 841
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_fmm_phone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceWidgetPageGravity()I
    .locals 1

    .line 1088
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "servicebox_page_gravity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getFaceWidgetPageOrder()Ljava/lang/String;
    .locals 1

    .line 1118
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_widget_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .locals 1

    .line 866
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "homecity_timezone"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconBlacklist()Ljava/lang/String;
    .locals 1

    .line 1369
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "icon_blacklist"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockNoticardOpacity()I
    .locals 1

    .line 1240
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_noticard_opacity"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockScreenNotificationValue()I
    .locals 1

    .line 920
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_notifications_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockScreenPriavateNotificationsValue()I
    .locals 1

    .line 924
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_allow_private_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockShortcutType()Ljava/lang/String;
    .locals 1

    .line 1598
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_shortcut_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1599
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "fixed"

    return-object p0
.end method

.method public getLockscreenWallpaperTransparent()I
    .locals 1

    .line 786
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent(I)I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperTransparent(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x1c

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 792
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "sub_display_lockscreen_wallpaper_transparency"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 794
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_transparent"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperType()I
    .locals 1

    .line 764
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getLockscreenWallpaperType(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x1c

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 770
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 772
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "lockscreen_wallpaper"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getMultiSIMDeviceSIM1On()I
    .locals 1

    .line 756
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "phone1_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getMultiSIMDeviceSIM2On()I
    .locals 1

    .line 760
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "phone2_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNDigitsPIN()I
    .locals 1

    .line 1193
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "n_digits_pin_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getNavigationBarAlignPosition()I
    .locals 1

    .line 1448
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1449
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_MOVABLE_POSITION:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_key_position"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNavigationBarGestureDetailType()I
    .locals 1

    .line 1489
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_detail_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNotificationTextColorInversion()I
    .locals 1

    .line 1244
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "notification_text_color_inversion"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "theme_font_numeric"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPluginLockValue()I
    .locals 1

    .line 1313
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockstar_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .locals 1

    .line 976
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_application_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShowNotificationOnKeyguardValue()I
    .locals 1

    .line 916
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public getVoiceCallType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 1215
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "voicecall_type"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0

    .line 1217
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string p1, "voicecall_type2"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    return p0
.end method

.method public hasTwoPhoneAccount()Z
    .locals 2

    .line 1645
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "two_account"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public is24HourModeEnabled()Z
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 850
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    .line 851
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    .line 852
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_1

    .line 853
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 854
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 856
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "12"

    .line 862
    :cond_2
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAccessControlEnabled()Z
    .locals 1

    .line 950
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "access_control_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdaptiveColorMode()Z
    .locals 1

    .line 1268
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_adaptive_color"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 1

    .line 748
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "airplane_mode_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllSoundOff()Z
    .locals 1

    .line 1586
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "all_sound_off"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowedBackGestureOnKeyboard()Z
    .locals 3

    .line 1501
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_back_gesture_on_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isAmplifyAmbientSoundOn()Z
    .locals 1

    .line 1637
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "amplify_ambient_sound"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistDisclosureEnabled()Z
    .locals 1

    .line 1536
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "assist_disclosure_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAutoWipeEnable()Z
    .locals 1

    .line 972
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "auto_swipe_main_user"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 1

    .line 964
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockGesturesWithSpenEnabled()Z
    .locals 2

    .line 1505
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_block_gestures_with_spen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCallScreenRotationAllowed()Z
    .locals 1

    .line 1387
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "call_auto_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCountIconDisabled()Z
    .locals 1

    .line 1025
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDataUsageReminderEnabled()Z
    .locals 2

    .line 1054
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DATA_USAGE_REMINDER:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "data_usage_reminder"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDisplayCutoutHideNotch()Z
    .locals 1

    .line 1078
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_cutout_hide_notch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayOutdoorMode()Z
    .locals 1

    .line 1377
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_outdoor_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDualClock()Z
    .locals 1

    .line 878
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "dualclock_menu_settings"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEasyModeOn()Z
    .locals 1

    .line 886
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "easy_mode_switch"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEdgeBackDisabledByPolicy()Z
    .locals 2

    .line 1530
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEmergencyMode()Z
    .locals 1

    .line 882
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "emergency_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableReserveMaxMode()Z
    .locals 5

    .line 1183
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING_DOWNLOADABLE:Z

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    const-string v3, "enable_reserve_max_mode"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1185
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v4, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1188
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v4, :cond_2

    move v2, v4

    :cond_2
    return v2
.end method

.method public isEnabledBiometricUnlockVI()Z
    .locals 1

    .line 1165
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "screen_transition_effect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledFaceStayOnLock()Z
    .locals 1

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledFaceWidgetAlarmPage()Z
    .locals 1

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "add_info_alarm"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledFaceWidgetMusicPage()Z
    .locals 1

    .line 1106
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "add_info_music_control"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledFaceWidgetTodaysPage()Z
    .locals 1

    .line 1110
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "add_info_today_schedule"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledIntelligentScanStayOnLock()Z
    .locals 1

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "intelligentscan_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledIrisOnFirstScreen()Z
    .locals 1

    .line 1058
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "use_iris_firstlock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledIrisStayOnLock()Z
    .locals 1

    .line 1066
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "iris_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledRapidKeyEnabled()Z
    .locals 1

    .line 1143
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "rapid_key_input"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledRapidKeyInput()Z
    .locals 1

    .line 1139
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isGoogleTalkbackEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledSmartScanRecognitionFirstScreen()Z
    .locals 1

    .line 1062
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "intelligentscan_without_swipe_to_unlock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledWof()Z
    .locals 1

    .line 1169
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_always_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintSensorPopupShowAgain()Z
    .locals 1

    .line 1657
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGametoolsEnabled()Z
    .locals 2

    .line 1464
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_show_floating_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isGoogleTalkbackEnabled()Z
    .locals 1

    .line 1156
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    .line 1157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.google.android.marvin.talkback.*"

    .line 1159
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHighPerformanceMode()Z
    .locals 1

    .line 899
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_HIGH_PERFORMANCE_MODE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "sem_perfomance_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeScreenRotationAllowed()Z
    .locals 1

    .line 1380
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "sehome_portrait_mode_only"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconSquicleMode()Z
    .locals 1

    .line 980
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "tap_to_icon"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiftToWakeEnabled()Z
    .locals 1

    .line 1611
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveWallpaperEnabled()Z
    .locals 4

    .line 777
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 779
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper_sub"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 781
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public isLock2StepVerificationEnabled()Z
    .locals 1

    .line 1327
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "knox_finger_print_plus"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockFunctionsEnabled()Z
    .locals 1

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_function_val"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 1

    .line 1395
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lock_screen_allow_rotation"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMagnifierWindowOn()Z
    .locals 1

    .line 1633
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "finger_magnifier"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMobileDataConnectionPopupShowing()Z
    .locals 1

    .line 1262
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mobile_data_question"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiWindowTrayEnabled()Z
    .locals 1

    .line 1568
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "multi_window_tray"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavBarButtonOrderDefault()Z
    .locals 2

    .line 1408
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_key_order"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureHintEnabled()Z
    .locals 2

    .line 1481
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_hint"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarGestureProtectionEnabled()Z
    .locals 2

    .line 1456
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "game_double_swipe_enable"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isNavigationBarGestureWhileHidden()Z
    .locals 3

    .line 1473
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_gesture_while_hidden"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isNavigationBarHideKeyboardButtonEnabled()Z
    .locals 2

    .line 1497
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_button_to_hide_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarRotateSuggestionEnabled()Z
    .locals 2

    .line 1440
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNavigationBarUseThemeDefault()Z
    .locals 2

    .line 1428
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "navigationbar_use_theme_default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isNetworkInformationHidden()Z
    .locals 2

    .line 1576
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_NETWORK_INFORMATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1577
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "status_bar_show_network_information"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public isNotificationIconDisabled()Z
    .locals 1

    .line 1031
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotificationIconEnabled()Z
    .locals 1

    .line 1036
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 1

    .line 1250
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationLaunchFreeformEnabled()Z
    .locals 1

    .line 1333
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "notification_freeform_menuitem"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandModeEnabled()Z
    .locals 2

    .line 1436
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "any_screen_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOneHandModeEnabledGestureType()Z
    .locals 2

    .line 1522
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "one_handed_op_wakeup_type"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isOneHandModeRunning()Z
    .locals 1

    .line 1629
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "any_screen_running"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenThemeLook()Z
    .locals 1

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p0

    .line 808
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPowerSavingMode()Z
    .locals 3

    .line 958
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "psm_switch"

    .line 959
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "low_power"

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isReduceAnimation()Z
    .locals 1

    .line 1619
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "reduce_animations"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenAutoBrightnessMode()Z
    .locals 1

    .line 1373
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "screen_brightness_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenOffMemoEnabled()Z
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "action_memo_on_off_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "screen_off_memo"

    .line 1127
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

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

.method public isShortcutMasterEnabled()Z
    .locals 1

    .line 1606
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_show_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 1

    .line 968
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "set_shortcuts_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowBatteryPercentInStatusBar()Z
    .locals 1

    .line 1203
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "display_battery_percentage"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowFaceWidgetOnAod()Z
    .locals 1

    .line 938
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "face_widgets_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowKeyboardButton()Z
    .locals 1

    .line 1235
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "show_keyboard_button"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowNotificationOnAOD()Z
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_notifications_option"

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_notifications_option"

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowRoamingClockOnKeyguard()Z
    .locals 1

    .line 929
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "roaming_clock_option"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShownWofNotification()Z
    .locals 1

    .line 1173
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "fingerprint_always_on_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSideSyncEnabled()Z
    .locals 1

    .line 954
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "sidesync_source_connect"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 1

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "simple_status_bar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemBrightnessEnabled()Z
    .locals 1

    .line 1557
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "pms_notification_panel_brightness_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTempMuteSettingValueOn()Z
    .locals 1

    .line 1365
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "mode_ringer_time_on"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTwoPhoneCallEnabled()Z
    .locals 2

    .line 1648
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "two_call_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTwoPhoneRegistered()Z
    .locals 2

    .line 1642
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "two_register"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTwoPhoneSMSEnabled()Z
    .locals 2

    .line 1651
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "two_sms_enabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTypoNotificationOn()Z
    .locals 1

    .line 1256
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "lockscreen_minimizing_notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUltraPowerSavingMode()Z
    .locals 1

    .line 894
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "ultra_powersaving_mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 1

    .line 1562
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "user_setup_complete"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoiceAssistantEnabled()Z
    .locals 1

    .line 1147
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "enabled_accessibility_services"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    .line 1148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 1

    .line 725
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "white_lockscreen_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 1

    .line 736
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v0, "white_lockscreen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$SettingsHelper()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public synthetic lambda$onUserSwitched$1$SettingsHelper()V
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public onUserSwitched()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    .line 603
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x5

    .line 606
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 607
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 5

    .line 623
    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** register listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    array-length v0, p2

    .line 626
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 628
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "SettingsHelper"

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object tried to add another listener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 633
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 637
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAODFaceWidgetPageGravity(I)V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_servicebox_page_gravity"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1098
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public varargs setAdaptiveColors([I)Z
    .locals 5

    .line 1273
    array-length v0, p1

    const-string v1, "SettingsHelper"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string p0, "setAdaptiveColors() failed ; must contain 4 colors"

    .line 1274
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1279
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    const-string v4, ";"

    .line 1280
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveColors "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "lock_clock_adaptive_colors"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAssistant(Ljava/lang/String;)V
    .locals 1

    .line 1540
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "assistant"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCallScreenRotationAllowed(Z)V
    .locals 1

    .line 1390
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "call_auto_rotation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setEdgeBackDisableByPolicy(Z)V
    .locals 1

    .line 1526
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigation_bar_gesture_disabled_by_policy"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setFaceWidgetPageGravity(I)V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "servicebox_page_gravity"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1084
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setFingerprintSensorPopupDoNotShowAgain(Z)V
    .locals 1

    .line 1661
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "fingerprint_sensor_block_popup_show_again"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setGametoolsEnabled(Z)V
    .locals 1

    .line 1468
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_show_floating_icon"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeScreenRotationAllowed(Z)V
    .locals 1

    .line 1383
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "sehome_portrait_mode_only"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 874
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "homecity_timezone"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLockScreenRotationAllowed(Z)V
    .locals 3

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lock_screen_allow_rotation"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1401
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :cond_0
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 1

    .line 1416
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 1

    .line 1424
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_current_color"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarGestureDetailType(I)V
    .locals 1

    .line 1485
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_detail_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarGestureWhileHidden(Z)V
    .locals 1

    .line 1477
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_gesture_while_hidden"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarRotateSuggestion(Z)V
    .locals 1

    .line 1444
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_bar_rotate_suggestion_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 1

    .line 1432
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigationbar_use_theme_default"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPluginLockValue(I)V
    .locals 1

    .line 1317
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockstar_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setShowBatteryPercentInStatusBar(I)V
    .locals 3

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1208
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setShownWofNotification(I)V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_always_on_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1179
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setTempMuteSettingValue(I)V
    .locals 1

    .line 1361
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mode_ringer_time_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setVoiceInteractionServiceAssistant(Ljava/lang/String;)V
    .locals 1

    .line 1544
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "voice_interaction_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setVoiceRecognitionService(Ljava/lang/String;)V
    .locals 1

    .line 1548
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "voice_recognition_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setWhiteKeyguardNavigationBar(I)V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_navigationbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1006
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 3

    .line 992
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_statusbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 994
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1000
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V
    .locals 4

    .line 658
    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** unregister listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 663
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 665
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 667
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 668
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 669
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 672
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 677
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
