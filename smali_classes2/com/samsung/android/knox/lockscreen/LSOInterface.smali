.class public Lcom/samsung/android/knox/lockscreen/LSOInterface;
.super Ljava/lang/Object;
.source "LSOInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;
    .locals 2

    .line 121
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 126
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->gLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    if-nez v0, :cond_0

    const-string v0, "lockscreen_overlay"

    .line 92
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-object p0
.end method


# virtual methods
.method public getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 3

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    .line 224
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 229
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    .line 231
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 3

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    .line 559
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 564
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Unhandled exception"

    .line 569
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "Failed talking with Lockscreen customization service"

    .line 566
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public isConfigured(I)Z
    .locals 3

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getService()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LSO_LSOInterface"

    if-nez v0, :cond_0

    const-string p0, "LSO Service is not yet ready!!!"

    .line 329
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 334
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed talking with Lockscreen customization service"

    .line 336
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 133
    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOInterface;->mLSOService:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-void
.end method
