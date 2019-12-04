.class public Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;
.super Ljava/lang/Object;
.source "FaceWidgetPagesController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final INTERNAL_PAGES_PACKAGE_NAME_LIST:[Ljava/lang/String;

.field public static final INTERNAL_PAGES_RES_ID_LIST:[I


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field private mCurrentClockGravity:I

.field private mCurrentPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field private mIsWhiteBgTop:Z

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mOrientation:I

.field private final mPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPendingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mSystemUIWidgetFlagState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "servicebox_clock"

    const-string v1, "servicebox_music"

    const-string v2, "servicebox_calendar"

    const-string v3, "servicebox_alarm"

    const-string v4, "clone_clock"

    .line 65
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->INTERNAL_PAGES_PACKAGE_NAME_LIST:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 73
    sget v1, Lcom/android/systemui/R$layout;->facewidget_clock_page:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$layout;->facewidget_music_page:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$layout;->facewidget_today_page:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$layout;->facewidget_alarm_page:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$layout;->facewidget_clone_clock_page:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->INTERNAL_PAGES_RES_ID_LIST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/facewidget/FaceWidgetController;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    .line 91
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const v0, 0x800013

    .line 93
    iput v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentClockGravity:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetFlagState:I

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mRefreshPendingSet:Ljava/util/Set;

    .line 137
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$1;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 150
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$2;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 226
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    .line 249
    new-instance v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mOrientation:I

    .line 103
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 105
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    const-string/jumbo p2, "top"

    invoke-static {p2}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    .line 109
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mIsWhiteBgTop:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->initInternalPages()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Set;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mRefreshPendingSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetFlagState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetFlagState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mIsWhiteBgTop:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mIsWhiteBgTop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    return-object p0
.end method

.method private initInternalPages()V
    .locals 7

    const/4 v0, 0x0

    .line 116
    :goto_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->INTERNAL_PAGES_PACKAGE_NAME_LIST:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    aget-object v3, v1, v0

    new-instance v4, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    aget-object v1, v1, v0

    sget-object v5, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->INTERNAL_PAGES_RES_ID_LIST:[I

    aget v5, v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v1, v5, v6}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$dump$13(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$dump$14(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 0

    .line 478
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getAllRemoteViewsItem$10(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Z
    .locals 0

    .line 388
    instance-of p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    return p0
.end method

.method static synthetic lambda$getAllRemoteViewsItem$11(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)I
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getCreatedTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$onSettingsChanged$4(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSettingsChanged$5(Landroid/net/Uri;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 0

    .line 345
    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$refreshViews$12(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 0

    .line 429
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setOrientation$6(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setOrientation$7(ILcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 0

    .line 359
    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setOrientation(I)V

    return-void
.end method

.method static synthetic lambda$setPageState$3(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZLcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p2, p0, v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZZ)V

    return-void
.end method

.method static synthetic lambda$updateGravity$0(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 124
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->setCreatedTime(J)V

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 475
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$mNoZpZ_tM33tR0K12oklEvN8Pn8;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$mNoZpZ_tM33tR0K12oklEvN8Pn8;

    .line 476
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 477
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$F0pb311x--XcajiOT2TZAnBkVgg;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 478
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 462
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    .line 469
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 1

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0
.end method

.method public getAODClockGravity()I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getAODClockType()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x800003

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    return p0
.end method

.method public getAllRemoteViewsItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 387
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$Z_HEhz_SG8OwUQFRlKCfBtiuErU;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$Z_HEhz_SG8OwUQFRlKCfBtiuErU;

    .line 388
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$6IJnEttBoC938myghnVmS-CrU28;

    .line 389
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 390
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getClockGravity()I
    .locals 0

    .line 497
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentClockGravity:I

    return p0
.end method

.method public getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    return-object p0
.end method

.method public getItem(Ljava/lang/String;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    return-object p0
.end method

.method public getLockscreenClockGravity()I
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getLastLockClockType()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x800013

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 364
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mOrientation:I

    return p0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public synthetic lambda$setPageState$2$FaceWidgetPagesController(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateGravity$1$FaceWidgetPagesController(ILcom/android/systemui/facewidget/pages/FaceWidgetPage;)V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->updateGravity(IZ)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    const-string v0, "FaceWidgetPagesController"

    const-string v1, "onDensityOrFontScaleChanged"

    .line 434
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FaceWidgetPagesController.#updateContentsView"

    .line 435
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 437
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$_q6gvksbhWQBTESom59s5ovT5_Q;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$_q6gvksbhWQBTESom59s5ovT5_Q;

    .line 438
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 439
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$faOffwRW_58knXRoUTasys51u8A;

    .line 440
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 441
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onSettingsChanged"

    .line 340
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 342
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$KZflbcKo87PMb0WAwVTbJwv_oAE;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$KZflbcKo87PMb0WAwVTbJwv_oAE;

    .line 343
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 344
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EmCFGPWCuNAwJOKzxr3xB2bKFQQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EmCFGPWCuNAwJOKzxr3xB2bKFQQ;-><init>(Landroid/net/Uri;)V

    .line 345
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 346
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 411
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "FaceWidgetPagesController"

    if-nez p2, :cond_0

    .line 415
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p2

    if-nez p2, :cond_0

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "refreshViews() pending reason = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mRefreshPendingSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 422
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshViews() reason = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FaceWidgetPagesController.#refreshViews "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 426
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/facewidget/pages/-$$Lambda$_q6gvksbhWQBTESom59s5ovT5_Q;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$_q6gvksbhWQBTESom59s5ovT5_Q;

    .line 427
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 428
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;-><init>(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    .line 429
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 430
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetPagesController.#setOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 351
    iget v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 352
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mOrientation:I

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 356
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AzwTLaiFG06TMOs5idtAJgqQjyk;

    .line 357
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 358
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$aF4eRev0S-li0VDRsH8PwRzCfI8;

    invoke-direct {v0, p1}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$aF4eRev0S-li0VDRsH8PwRzCfI8;-><init>(I)V

    .line 359
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 360
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetPagesController.#setPageState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$8kis3oYn9qSqAOR8AuPEJBganvE;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$8kis3oYn9qSqAOR8AuPEJBganvE;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V

    .line 333
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 334
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 335
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 336
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public updateAODClockStyle()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getAODClockType()I

    move-result v0

    const/4 v1, 0x2

    const v2, 0xc35e

    if-ne v0, v2, :cond_0

    .line 295
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addFlags(I)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateGravity(I)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetPagesController.#updateGravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 317
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mCurrentClockGravity:I

    .line 319
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->mPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EhblK3jbTpdWE70ITC-hKOYugrI;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$EhblK3jbTpdWE70ITC-hKOYugrI;

    .line 321
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 322
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$AdsQ8GXHm7GBcR-oFGv117x7C8s;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;I)V

    .line 323
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 324
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
