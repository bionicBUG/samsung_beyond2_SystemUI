.class public Lcom/android/systemui/statusbar/LockscreenNotificationInfo;
.super Ljava/lang/Object;
.source "LockscreenNotificationInfo.java"


# instance fields
.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mKey:Ljava/lang/String;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field public mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mColor:I

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public setInfoData(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 92
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 93
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 94
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    return-void
.end method
