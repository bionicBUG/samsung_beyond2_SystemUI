.class Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UcmMonitor"
.end annotation


# instance fields
.field private final UCM_SERVICE_NAME:Ljava/lang/String;

.field private mUCMVendor:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 2397
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    const-string p1, "com.samsung.ucs.ucsservice"

    .line 2394
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->UCM_SERVICE_NAME:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2395
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method

.method private registerCallback()V
    .locals 2

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 2408
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    if-nez v0, :cond_0

    const-string p0, "UcmMonitor failed to get UCM System service"

    .line 2410
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2414
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UcmMonitor failed to be registered"

    .line 2416
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getUCMVendor()Ljava/lang/String;
    .locals 0

    .line 2430
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 2402
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2403
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->registerCallback()V

    return-void
.end method

.method public setUCMKeyguardVendor(Ljava/lang/String;)V
    .locals 0

    .line 2435
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method
