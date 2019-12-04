.class public Lcom/android/systemui/pluginlock/component/PluginLockClock;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockClock.java"


# instance fields
.field private final mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

.field private mClockCallbackRegisterTime:J

.field private mClockGravity:I

.field private mClockPaddingEnd:I

.field private mClockPaddingStart:I

.field private mClockRecoverType:I

.field private mClockScale:F

.field private mClockType:I

.field private mIsDlsData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mIsDlsData:Z

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    .line 20
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockGravity:I

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingStart:I

    .line 22
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingEnd:I

    .line 23
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockScale:F

    .line 172
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock$1;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockClock;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pluginlock/component/PluginLockClock;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallbackRegisterTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/pluginlock/component/PluginLockClock;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallbackRegisterTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pluginlock/component/PluginLockClock;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    return p0
.end method

.method private loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mIsDlsData:Z

    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    .line 135
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockGravity:I

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingStart:I

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingEnd:I

    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->getScale()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockScale:F

    return-void
.end method

.method private registerClockCallback()V
    .locals 2

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallbackRegisterTime:J

    .line 164
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method private unregisterClockCallback()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 168
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallbackRegisterTime:J

    .line 169
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockCallback:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 33
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockClock"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    .line 40
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    .line 43
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockType(Z)I

    move-result p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply() current clock: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setClockType(I)Z

    .line 53
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    const-string p2, "plugin_lock_clock"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->registerClockCallback()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getClockGravity()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockGravity:I

    return p0
.end method

.method public getClockPaddingEnd()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingEnd:I

    return p0
.end method

.method public getClockPaddingStart()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingStart:I

    return p0
.end method

.method public getClockScale()F
    .locals 0

    .line 147
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockScale:F

    return p0
.end method

.method public recover()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recover() mClockRecoverType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockClock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    const/4 v1, -0x2

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockState(I)V

    const-string v1, "plugin_lock_clock"

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->unregisterClockCallback()V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    .line 100
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockGravity:I

    .line 101
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingStart:I

    .line 102
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockPaddingEnd:I

    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockRecoverType:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 104
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockScale:F

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->unregisterClockCallback()V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset() state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockClock"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-eq v1, v0, :cond_0

    const/4 p1, -0x2

    if-eq v1, p1, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result p1

    .line 120
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setClockType(I)Z

    const-string p1, "plugin_lock_clock"

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    const-string v0, "PluginLockClock"

    const-string/jumbo v1, "update()"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 66
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->unregisterClockCallback()V

    .line 72
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    const-string p2, "plugin_lock_clock"

    if-eq p1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setClockType(I)Z

    .line 74
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockClock;->mClockType:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->registerClockCallback()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result p1

    .line 78
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setClockType(I)Z

    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :goto_0
    return-void
.end method
