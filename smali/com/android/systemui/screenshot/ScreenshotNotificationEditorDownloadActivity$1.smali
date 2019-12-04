.class Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenshotNotificationEditorDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
