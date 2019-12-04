.class public Lcom/android/systemui/statusbar/LockscreenNotificationManager;
.super Ljava/lang/Object;
.source "LockscreenNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;,
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;,
        Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "LockscreenNotificationManager"


# instance fields
.field private mBarState:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentNotificationType:I

.field private mCurrentOrientation:I

.field protected mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsDetail:Z

.field private mIsKeyguardSupportLandscapePhone:Z

.field private final mLock:Ljava/lang/Object;

.field private mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field private final mNotificationSettingUri:Landroid/net/Uri;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mSettingNotificationType:I

.field private mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Landroid/os/Looper;Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    const-string v1, "lockscreen_minimizing_notification"

    .line 77
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    .line 107
    new-instance v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$1;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 83
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    .line 87
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 91
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 95
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingsListenerForNotificationStyle:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 100
    new-instance p1, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 102
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/net/Uri;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mNotificationSettingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/LockscreenNotificationManager;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->resetLockscreenNotificationType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private createLockscreenNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/LockscreenNotificationInfo;
    .locals 1

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->setInfoData(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-object v0
.end method

.method private notifyTypeChanged()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p0, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private resetLockscreenNotificationType()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigNotificationStyleOnLockscreen"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lockscreen_minimizing_notification"

    if-nez v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private updateNotificationType()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isKeyguardState()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsKeyguardSupportLandscapePhone:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    if-ne v0, v1, :cond_0

    move v3, v1

    goto :goto_0

    .line 241
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mSettingNotificationType:I

    if-ne v0, v2, :cond_2

    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 252
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    if-eq v3, v0, :cond_3

    .line 253
    iput v3, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->notifyTypeChanged()V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCallbackInIconsOnly()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCallbockInLockscreenNotificationManager()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    return-void
.end method

.method public addLockscreenNotificationInfoToArray(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->createLockscreenNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    move-result-object p0

    .line 222
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateAlphaByQsExpansion(FZII)V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->calculateAlphaByQsExpansion(FZII)V

    return-void
.end method

.method public createLockscreenNotificationInfoArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 217
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getNotificationIconsOnlyContainerHeight()I
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getNotificationIconsOnlyContainerHeight()I

    move-result p0

    return p0
.end method

.method public hasLockNotiIcons()Z
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->hasLockNotiIcons()Z

    move-result p0

    return p0
.end method

.method public inflateNotificationIconsOnlyContainer(Landroid/view/ViewStub;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->inflateNotificationIconsOnlyContainer(Landroid/view/ViewStub;)V

    return-void
.end method

.method public isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconsOnlyInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->isIconsOnlyTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isNotificationIconsOnlyShowing()Z
    .locals 2

    .line 260
    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public notifyLockscreenNotificationInfoArrayUpdated(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 140
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 141
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    .line 142
    sget-object p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation updated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->setShowDetail(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 152
    sget-object p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarState updated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mBarState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setBouncerShowing(Z)V

    .line 281
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility(I)V

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setDarkAmount(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setDozing(Z)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility(I)V

    return-void
.end method

.method public setShowDetail(Z)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    if-eq v0, p1, :cond_0

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsDetail:Z

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->updateNotificationType()V

    :cond_0
    return-void
.end method

.method public setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setStackScrollLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method public updateNotificationIconsOnlyPosition(ILcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateNotificationIconsOnlyPosition(ILcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    return-void
.end method
