.class public Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsKeyguardVisible:Z

.field private mIsProximitySensorOccluded:Z

.field private mIsSensorListening:Z

.field private mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStateChangeHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 76
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 90
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mStateChangeHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager$4;-><init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 123
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    .line 125
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 126
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensor:Landroid/hardware/Sensor;

    .line 128
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 131
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mStateChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;
    .locals 2

    .line 135
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    if-nez v0, :cond_1

    .line 136
    const-class v0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    .line 140
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 143
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    return-object p0
.end method

.method static synthetic lambda$addListener$0(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 152
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

.method private shouldListenForProximitySensor()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 173
    :goto_0
    const-class v4, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 174
    :goto_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 175
    iget-boolean v5, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    .line 177
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shouldListenForProximitySensor() shouldListening = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsSensorListening = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "(isThereAnyCallback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isScreenOn="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isBiometricUnlockState="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsKeyguardVisible="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardProximitySensorManager"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    .line 181
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 183
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    const-string p0, "proximity sensor start"

    .line 184
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 187
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 189
    iput-boolean v3, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsSensorListening:Z

    const-string p0, "proximity sensor stop"

    .line 190
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$hRtTnW84OvekqUqsqDQoENDaoe0;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardProximitySensorManager$hRtTnW84OvekqUqsqDQoENDaoe0;-><init>(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;->onProximitySensorOccludedChanged(Z)V

    .line 159
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method
