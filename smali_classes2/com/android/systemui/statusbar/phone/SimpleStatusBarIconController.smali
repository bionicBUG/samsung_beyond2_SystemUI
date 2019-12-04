.class public Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;
.super Ljava/lang/Object;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SimpleStatusBarIconController"

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 121
    sget-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mContext:Landroid/content/Context;

    .line 45
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 47
    const-class p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 48
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 50
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const-string v0, "simple_status_bar"

    .line 51
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 50
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0
.end method

.method private getLastNotificationIcons(I)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 90
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 92
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 93
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v11, v7, Landroid/app/Notification;->when:J

    .line 94
    new-instance v7, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    const/4 v13, 0x0

    move-object v8, v7

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Ljava/lang/String;JLcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$1;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mTimeComparator:Ljava/util/Comparator;

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_3

    .line 100
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    .line 101
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v3

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    .line 123
    iget-wide p0, p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;->when:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applySimpleStatusBar(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->getLastNotificationIcons(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 0

    .line 74
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isSimpleStatusBarEnabled()Z

    move-result p0

    return p0
.end method
