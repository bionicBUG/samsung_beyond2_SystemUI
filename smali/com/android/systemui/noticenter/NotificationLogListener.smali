.class public Lcom/android/systemui/noticenter/NotificationLogListener;
.super Landroid/app/Service;
.source "NotificationLogListener.java"


# instance fields
.field private final mBinder:Lcom/android/internal/notification/INotificationLogListener$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/noticenter/NotificationLogListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/noticenter/NotificationLogListener$1;-><init>(Lcom/android/systemui/noticenter/NotificationLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotificationLogListener;->mBinder:Lcom/android/internal/notification/INotificationLogListener$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "NotificationLogListener"

    const-string v0, "onBind!!"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotificationLogListener;->mBinder:Lcom/android/internal/notification/INotificationLogListener$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    const-string p0, "NotificationLogListener"

    const-string v0, "onCreate!!"

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
