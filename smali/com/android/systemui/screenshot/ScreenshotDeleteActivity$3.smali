.class Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;
.super Ljava/lang/Object;
.source "ScreenshotDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 88
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 92
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->access$100(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;->access$000(Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x0

    invoke-static {p2, v0, p0, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 98
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
