.class Lcom/android/systemui/noticenter/NotificationLogListener$1;
.super Lcom/android/internal/notification/INotificationLogListener$Stub;
.source "NotificationLogListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/noticenter/NotificationLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/noticenter/NotificationLogListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/noticenter/NotificationLogListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotificationLogListener$1;->this$0:Lcom/android/systemui/noticenter/NotificationLogListener;

    invoke-direct {p0}, Lcom/android/internal/notification/INotificationLogListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNotificationLog(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "NotificationLogListener"

    const-string p1, "notifyNotificationLog!!"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
