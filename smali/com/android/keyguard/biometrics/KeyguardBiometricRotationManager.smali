.class public Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;
.super Ljava/lang/Object;
.source "KeyguardBiometricRotationManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mIsRotationListening:Z

.field private mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mStateChangeHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 55
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mStateChangeHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mStateChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCurrentRotation:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCurrentRotation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;
    .locals 2

    .line 78
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 86
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    return-object p0
.end method

.method static synthetic lambda$addListener$0(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$removeListener$1(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldListenForKeyguardRotation()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldListenForKeyguardRotation() shouldListening = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsRotationListening = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "(isThereAnyCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardBiometricRotationManager"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 122
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    if-nez v0, :cond_2

    .line 124
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 124
    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    const-string p0, "listening keyguard rotation start"

    .line 130
    invoke-static {v4, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 133
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    if-eqz v0, :cond_2

    .line 135
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mIsRotationListening:Z

    const-string p0, "listening keyguard rotation stop"

    .line 140
    invoke-static {v4, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$uNwcKie0nvWSAA33ZAF0WUNXRP0;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$uNwcKie0nvWSAA33ZAF0WUNXRP0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCurrentRotation:I

    invoke-interface {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;->onRotationChanged(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method

.method public removeListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$VzlYeCodd0GaeSVN8TNpRoF4-qQ;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRotationManager$VzlYeCodd0GaeSVN8TNpRoF4-qQ;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 108
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->mCallbacks:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->shouldListenForKeyguardRotation()V

    return-void
.end method
