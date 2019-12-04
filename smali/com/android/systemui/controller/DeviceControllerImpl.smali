.class public Lcom/android/systemui/controller/DeviceControllerImpl;
.super Ljava/lang/Object;
.source "DeviceControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceControllerImpl"

    .line 19
    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private setFlashlight(Z)I
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string v0, "setFlashlight"

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-class p0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz p0, :cond_3

    .line 69
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 74
    :cond_2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public restartDevice(Landroid/content/Context;)V
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string p1, "restartDevice"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "statusbar"

    .line 43
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->rebootByBixby(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "reboot RemoteException "

    .line 49
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffDevice(Landroid/content/Context;)V
    .locals 1

    const-string p0, "DeviceControllerImpl"

    const-string/jumbo p1, "turnOffDevice"

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "statusbar"

    .line 29
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->shutdownByBixby()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "shutdown RemoteException "

    .line 35
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public turnOffFlash(Landroid/content/Context;)I
    .locals 1

    const-string p1, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOffFlash"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result p0

    return p0
.end method

.method public turnOffScreen(Landroid/content/Context;)V
    .locals 2

    const-string p0, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOffScreen"

    .line 84
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "power"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public turnOnFlash(Landroid/content/Context;)I
    .locals 1

    const-string p1, "DeviceControllerImpl"

    const-string/jumbo v0, "turnOnFlash"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result p0

    return p0
.end method
