.class public Lcom/samsung/android/knox/kiosk/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    const-string v0, "com.sec.android.app.controlpanel"

    .line 86
    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.taskmanager"

    .line 90
    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.minimode.taskcloser"

    .line 94
    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.intent.action.REFRESH_HWKEY_CACHE_INTERNAL"

    .line 98
    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    .line 252
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 289
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 291
    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string v0, "restriction_policy"

    .line 266
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method private getService()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_0

    const-string v0, "kioskmode"

    .line 257
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object p0
.end method


# virtual methods
.method public isKioskModeEnabled()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    .line 517
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
