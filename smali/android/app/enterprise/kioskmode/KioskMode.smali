.class public Landroid/app/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static ACTION_REFRESH_HWKEY:Ljava/lang/String;

.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String;

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->mSync:Ljava/lang/Object;

    const-string v0, "com.sec.android.app.controlpanel"

    .line 85
    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.taskmanager"

    .line 88
    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.minimode.taskcloser"

    .line 91
    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    .line 94
    sput-object v0, Landroid/app/enterprise/kioskmode/KioskMode;->ACTION_REFRESH_HWKEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-object p0
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string v0, "restriction_policy"

    .line 238
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 240
    :cond_0
    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method private getService()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_0

    const-string v0, "kioskmode"

    .line 229
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 232
    :cond_0
    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object p0
.end method


# virtual methods
.method public isKioskModeEnabled()Z
    .locals 2

    .line 479
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KioskMode"

    const-string v1, "Failed talking with kiosk mode service"

    .line 483
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
