.class public Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;
.super Ljava/lang/Object;
.source "FaceWidgetNotificationManager.java"


# instance fields
.field private mFaceWidgetMusicNotificationKey:Ljava/lang/String;

.field private mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

.field private final mMediaNotificationKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationUpdater:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private updateFaceWidgetMusicNotificationKey(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Z
    .locals 9

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->isMusicFaceWidgetOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iput-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFaceWidgetMusicNotificationPkg is empty but mFaceWidgetMusicNotificationKey is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetNotificationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    const-class v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_3

    .line 95
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 96
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 97
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 98
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 99
    iget-object p1, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 100
    iget-object p1, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    .line 101
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    invoke-interface {p0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public addFaceWidgetMusicNotification(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public init(Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public isFaceWidgetMusicNotification(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMusicFaceWidgetOn()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceWidgetMusicPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 60
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isClockOnly()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeFaceWidgetMusicNotification(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationKey:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateFaceWidgetMusicNotificationKey()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->updateFaceWidgetMusicNotificationKey(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Z

    move-result p0

    return p0
.end method

.method public updateFaceWidgetMusicNotificationPkg(Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mFaceWidgetMusicNotificationPkg:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->updateFaceWidgetMusicNotificationKey(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Z

    :cond_0
    return-void
.end method
