.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OMCWallpaperUpdatedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;)V
    .locals 0

    .line 1734
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1736
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1737
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMCWallpaperUpdatedReceiver : onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.RSCUPDATE_START"

    .line 1738
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1739
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$3100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 1741
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 1742
    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1743
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1744
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1745
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1746
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
