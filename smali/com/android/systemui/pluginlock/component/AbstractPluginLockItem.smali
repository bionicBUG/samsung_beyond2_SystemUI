.class abstract Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.super Ljava/lang/Object;
.source "AbstractPluginLockItem.java"


# instance fields
.field final mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

.field private final mCr:Landroid/content/ContentResolver;

.field protected mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 30
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    return-void
.end method


# virtual methods
.method getClockBackupValue()I
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClock()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getClockState()I
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getClockState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getNotificationOriginBackupValue()I
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationOrigin()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getNotificationState()I
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getNotificationState()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getSettingsSystem(Ljava/lang/String;I)I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getWallpaperDynamicBackupValue()I
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x2

    if-nez p0, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperDynamic()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getWallpaperSourceBackupValue()I
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method getWallpaperTypeBackupValue()I
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getWallpaperType()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method putSettingsSecure(Ljava/lang/String;I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method putSettingsSystem(Ljava/lang/String;I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method setClockBackupValue(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClock(I)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 158
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    .line 160
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method setClockState(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setClockState(I)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    return-void
.end method

.method setNotificationOriginBackupValue(I)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationOrigin(Ljava/lang/Integer;)V

    if-ltz p1, :cond_0

    const/4 p1, -0x3

    .line 181
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 183
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    .line 185
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_1
    return-void
.end method

.method setNotificationState(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setNotificationState(I)V

    .line 170
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperBackupValue(III)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    .line 195
    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    .line 196
    invoke-virtual {v0, p3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperDynamicBackupValue(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(I)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperSourceBackupValue(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(I)V

    .line 217
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method

.method setWallpaperTypeBackupValue(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(I)V

    .line 227
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_0
    return-void
.end method
