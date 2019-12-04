.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SaveImageInBackgroundTask"

    const-string v0, "onClipBoardServiceConnected"

    .line 438
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$2002(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SaveImageInBackgroundTask"

    const-string v0, "onClipBoardServiceDisconnected"

    .line 432
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->access$2002(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
