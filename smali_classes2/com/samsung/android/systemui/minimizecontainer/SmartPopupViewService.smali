.class public Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;
.super Landroid/service/notification/NotificationListenerService;
.source "SmartPopupViewService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mEnabledList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;Ljava/lang/String;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mEnabledList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mEnabledList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 31
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private isPackageEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mEnabledList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSmartPopupViewTarget(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 2

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "BubbleContainerManager"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 108
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[SmartPopupViewService] isSmartPopupViewTarget: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 115
    :cond_1
    iget-object p0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_9

    .line 116
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    iget-object p0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string p1, "progress"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string p1, "service"

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 126
    :cond_3
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: notification category is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 133
    :cond_5
    iget p0, p2, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x240

    if-eqz p0, :cond_7

    .line 135
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p0, :cond_6

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: notification flags is 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/Notification;->flags:I

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1

    :cond_7
    if-nez p3, :cond_8

    const-string p0, "[SmartPopupViewService] notificationKey is null"

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0

    .line 117
    :cond_9
    :goto_0
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[SmartPopupViewService] isSmartPopupViewTarget: pendingIntent is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1
.end method

.method private registerPackageRemoveReceiver()V
    .locals 2

    .line 151
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/NotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 44
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[SmartPopupViewService] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x2

    .line 48
    :try_start_0
    invoke-virtual {p0, p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 68
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[SmartPopupViewService] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 70
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->registerPackageRemoveReceiver()V

    .line 72
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 77
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[SmartPopupViewService] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 86
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 90
    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmartPopupViewService] onNotificationPosted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "BubbleContainerManager"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->isSmartPopupViewTarget(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;-><init>(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 99
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartPopupViewService] onNotificationRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x18

    .line 102
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 57
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[SmartPopupViewService] onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
