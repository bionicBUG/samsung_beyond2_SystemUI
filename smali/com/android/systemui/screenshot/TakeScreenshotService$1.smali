.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 61
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 62
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Skipping screenshot because storage is locked!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 86
    :cond_1
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_8

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    const/16 v3, 0x64

    if-eq p0, v3, :cond_2

    goto :goto_3

    .line 94
    :cond_2
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotWindow(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3

    .line 91
    :cond_5
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v0

    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_7

    move v0, v2

    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_3

    .line 88
    :cond_8
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_9

    move v3, v2

    goto :goto_2

    :cond_9
    move v3, v0

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_a

    move v0, v2

    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    :goto_3
    return-void
.end method
