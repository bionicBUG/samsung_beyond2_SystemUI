.class public Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
.super Ljava/lang/Object;
.source "RemoteScrollCaptureInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ScrCap]_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-object p0
.end method

.method public static isPackageAvailable(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "com.samsung.android.app.smartcapture"

    .line 251
    invoke-static {p0, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.samsung.android.app.scrollcapture"

    .line 252
    invoke-static {p0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 255
    :goto_0
    sget-object v2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPackageAvailable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v4, "available"

    goto :goto_1

    :cond_1
    const-string v4, "not available"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isSmartCaptureAvailable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isScrollCaptureAvailable : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 263
    sget-object p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string p1, "isPackageAvailable : Failed to get package manager!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 269
    :goto_0
    sget-object p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPackageAvailable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    const-string v2, "available"

    goto :goto_1

    :cond_2
    const-string v2, "not available"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 272
    sget-object p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPackageAvailable : not available. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 279
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 280
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 281
    iput-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z
    .locals 5

    .line 43
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 47
    sget-object p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string p1, "connect : Already connected"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 52
    sget-object p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string p1, "connect : Connection already requested"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    .line 59
    new-instance p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;-><init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V

    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 80
    iget-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.app.smartcapture"

    invoke-static {p2, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const-string v1, "com.samsung.android.app.scrollcapture.core.ScrollCaptureRemoteService"

    if-eqz p2, :cond_2

    .line 81
    sget-object p2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v2, "SmartCapture will be binded."

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 84
    :cond_2
    sget-object p2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v0, "ScrollCapture will be binded."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.app.scrollcapture"

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 89
    sget-object p2, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v0, "connect : bindService failed"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;

    if-eqz p2, :cond_3

    .line 91
    invoke-interface {p2, v4}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;->onConnectionResult(Z)V

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    :cond_4
    return p1
.end method

.method public disconnect()V
    .locals 4

    .line 100
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect : e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "disconnect : No service connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->release()V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 235
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "notifyGlobalScreenshotFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    sget-object p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string p1, "notifyGlobalScreenshotFinished : No service connection"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 242
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 244
    sget-object p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "notifyGlobalScreenshotFinished : e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 219
    sget-object v0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string v1, "notifyGlobalScreenshotStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    sget-object p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    const-string p1, "notifyGlobalScreenshotStarted : No service connection"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 226
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;->onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 228
    sget-object p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "notifyGlobalScreenshotStarted : e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
