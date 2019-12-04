.class public Lcom/android/systemui/pluginlock/component/PluginLockNotification;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockNotification.java"


# instance fields
.field private mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mIsDlsData:Z

.field private mNotiCallbackRegisterTime:J

.field private mNotiCardBottomPadding:I

.field private mNotiCardBottomPaddingOffset:I

.field private mNotiCardNumbers:I

.field private mNotiCardTopPadding:I

.field private mNotiIconGravity:I

.field private mNotiIconPaddingEnd:I

.field private mNotiIconPaddingStart:I

.field private mNotiIconPaddingStartOffset:I

.field private mNotiIconPaddingTop:I

.field private mNotiIconPaddingTopOffset:I

.field private mNotiType:I

.field private mOriginDls:Z

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mOriginDls:Z

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiType:I

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardTopPadding:I

    .line 27
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPadding:I

    .line 28
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPaddingOffset:I

    .line 29
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconGravity:I

    .line 30
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTop:I

    .line 31
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStart:I

    .line 32
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    .line 33
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTopOffset:I

    .line 34
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStartOffset:I

    .line 35
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardNumbers:I

    .line 228
    new-instance p1, Lcom/android/systemui/pluginlock/component/-$$Lambda$PluginLockNotification$H7wyRdCWMsySI8JQmHN1utYdbvI;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/-$$Lambda$PluginLockNotification$H7wyRdCWMsySI8JQmHN1utYdbvI;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockNotification;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 43
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private loadNotiData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    .line 155
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardTop()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardTopPadding:I

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardBottom()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPadding:I

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardBottomOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPaddingOffset:I

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingTop()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTop:I

    .line 159
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStart:I

    .line 160
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getGravity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconGravity:I

    .line 162
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingStartOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStartOffset:I

    .line 163
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->getPaddingTopOffset()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTopOffset:I

    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->getNotiCardNumbers()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardNumbers:I

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationVisibility(I)V

    return-void
.end method

.method private registerNotiTypeCallback()V
    .locals 4

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCallbackRegisterTime:J

    .line 220
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method private setNotificationType(I)V
    .locals 1

    const-string v0, "lockscreen_minimizing_notification"

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(Ljava/lang/String;I)V

    return-void
.end method

.method private setNotificationVisibility(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string v0, "lock_screen_show_notifications"

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unregisterNotiTypeCallback()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 224
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCallbackRegisterTime:J

    .line 225
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mCallBack:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    .line 48
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadNotiData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 50
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply() state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PluginLockNotification"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const-string p0, "apply() skip!"

    .line 59
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    const-string p2, "lockscreen_minimizing_notification"

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsSystem(Ljava/lang/String;I)I

    move-result p2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply() curValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationOriginBackupValue(I)V

    const/4 p2, 0x2

    if-ne v0, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 71
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply() dlsType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerNotiTypeCallback()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getNotiCardBottomPaddingOffset()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPaddingOffset:I

    return p0
.end method

.method public getNotiCardNumbers()I
    .locals 0

    .line 215
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardNumbers:I

    return p0
.end method

.method public getNotiCardTopPadding()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardTopPadding:I

    return p0
.end method

.method public getNotiIconPaddingStart()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStart:I

    return p0
.end method

.method public getNotiIconPaddingStartOffset()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStartOffset:I

    return p0
.end method

.method public getNotiIconPaddingTop()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTop:I

    return p0
.end method

.method public getNotiIconPaddingTopOffset()I
    .locals 0

    .line 207
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTopOffset:I

    return p0
.end method

.method public synthetic lambda$new$0$PluginLockNotification(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCallbackRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->recover()V

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockNotification"

    const-string v1, "recover()"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationOriginBackupValue(I)V

    const/4 v0, -0x2

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationState(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterNotiTypeCallback()V

    return-void
.end method

.method public reset(Z)V
    .locals 4

    const-string v0, "PluginLockNotification"

    const-string v1, "reset()"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardTopPadding:I

    .line 130
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPadding:I

    .line 131
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardBottomPaddingOffset:I

    const/4 v2, 0x1

    .line 132
    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconGravity:I

    .line 133
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTop:I

    .line 134
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStart:I

    .line 135
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingEnd:I

    .line 136
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingTopOffset:I

    .line 137
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiIconPaddingStartOffset:I

    .line 138
    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mNotiCardNumbers:I

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterNotiTypeCallback()V

    if-nez p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationOriginBackupValue()I

    move-result p1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset() originType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 149
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationOriginBackupValue(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    const-string v0, "PluginLockNotification"

    const-string/jumbo v1, "update()"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->loadNotiData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 97
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->unregisterNotiTypeCallback()V

    .line 105
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 107
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->registerNotiTypeCallback()V

    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getNotificationOriginBackupValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setNotificationType(I)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setNotificationOriginBackupValue(I)V

    :goto_1
    return-void
.end method
