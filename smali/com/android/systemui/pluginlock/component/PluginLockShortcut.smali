.class public Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockShortcut.java"


# instance fields
.field private final mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mCallbackRegisterTime:J

.field private mIsDlsData:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 181
    new-instance p1, Lcom/android/systemui/pluginlock/component/-$$Lambda$PluginLockShortcut$2Og5amNTO_BEgkQjFevXgyiqbZ4;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/-$$Lambda$PluginLockShortcut$2Og5amNTO_BEgkQjFevXgyiqbZ4;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 26
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private getShortcutBackup()I
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutBackupValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private getShortcutState()I
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    .line 108
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->getShortcutVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    return-void
.end method

.method private registerCallback()V
    .locals 4

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallbackRegisterTime:J

    .line 173
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "lockscreen_show_shortcut"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setShortcutBackup(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutBackup(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    .line 157
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 161
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method private setShortcutState(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method private setShortcutVisibility(I)V
    .locals 1

    const-string v0, "lockscreen_show_shortcut"

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBottomShortcutVisibility(Z)V

    return-void
.end method

.method private unregisterCallback()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 177
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallbackRegisterTime:J

    .line 178
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 31
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockShortcut"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    .line 39
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const/4 p1, 0x1

    const-string p2, "lockscreen_show_shortcut"

    .line 40
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apply() curValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    .line 44
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 45
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply() dlsVisible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback()V

    :cond_3
    :goto_1
    return-void
.end method

.method public isShortcutInvisible()Z
    .locals 1

    .line 112
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$new$0$PluginLockShortcut(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallbackRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->recover()V

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockShortcut"

    const-string v1, "recover()"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 82
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    const/4 v0, -0x2

    .line 83
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutState(I)V

    const/4 v0, 0x1

    const-string v1, "lockscreen_show_shortcut"

    .line 85
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBottomShortcutVisibility(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset() reconnectReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockShortcut"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    if-nez p1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset() original: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 102
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    const-string v0, "PluginLockShortcut"

    const-string/jumbo v1, "update()"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 58
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->unregisterCallback()V

    .line 64
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->getShortcutVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback()V

    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutBackup()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    :goto_1
    return-void
.end method
