.class public Lcom/android/systemui/sensor/PickupController;
.super Lcom/android/systemui/sensor/SensorController;
.source "PickupController.java"


# static fields
.field private static sInstance:Lcom/android/systemui/sensor/PickupController;


# instance fields
.field private mAddedMonitorCallback:Z

.field mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPickupListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sensor/SensorController$SensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/sensor/SensorController;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/android/systemui/sensor/PickupController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/sensor/PickupController$1;-><init>(Lcom/android/systemui/sensor/PickupController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/systemui/sensor/PickupController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensor/PickupController$2;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 130
    new-instance v0, Lcom/android/systemui/sensor/PickupController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensor/PickupController$3;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    new-instance p1, Lcom/android/systemui/sensor/-$$Lambda$PickupController$F3r_9XzRGexKSUBLI5_i0pAUW2E;

    invoke-direct {p1, p0}, Lcom/android/systemui/sensor/-$$Lambda$PickupController$F3r_9XzRGexKSUBLI5_i0pAUW2E;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->registerSensor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/sensor/PickupController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/sensor/PickupController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/sensor/PickupController;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->unRegisterSensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/sensor/PickupController;)Landroid/os/PowerManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private addKeyguardUpdateMonitorCallback()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedMonitorCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedMonitorCallback:Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;
    .locals 2

    .line 195
    const-class v0, Lcom/android/systemui/sensor/PickupController;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/android/systemui/sensor/PickupController;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensor/PickupController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    .line 199
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    sget-object p0, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    return-object p0

    :catchall_0
    move-exception p0

    .line 199
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isLiftToWakeEnabled()Z
    .locals 0

    .line 159
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 162
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      lisenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private registerSensor()V
    .locals 2

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->unregister(I)Z

    .line 169
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->register(I)Z

    return-void
.end method

.method private removeKeyguardUpdateMonitorCallback()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedMonitorCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedMonitorCallback:Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private unRegisterSensor()V
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->unregister(I)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "   PickupController Dump"

    .line 235
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mAddedMonitorCallback="

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedMonitorCallback:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/sensor/-$$Lambda$PickupController$r_nt8hhwoGB5lopaDjURu1fpStE;

    invoke-direct {v0, p1}, Lcom/android/systemui/sensor/-$$Lambda$PickupController$r_nt8hhwoGB5lopaDjURu1fpStE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$PickupController(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "lift_to_wake"

    .line 119
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PickupController"

    const-string v0, "onChanged() LIFT_TO_WAKE"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addKeyguardUpdateMonitorCallback()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->removeKeyguardUpdateMonitorCallback()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    const-string v1, "PickupController"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string p0, "onTrigger return cause by CALL_STATE_OFFHOOK"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrigger Listener.size()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v0}, Lcom/android/systemui/sensor/SensorController$SensorListener;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;->onExecute()V

    return-void

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "register listener caller="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PickupController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restart()V
    .locals 4

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addKeyguardUpdateMonitorCallback()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->removeKeyguardUpdateMonitorCallback()V

    .line 218
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 219
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "lift_to_wake"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addKeyguardUpdateMonitorCallback()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V

    .line 209
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "lift_to_wake"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method
