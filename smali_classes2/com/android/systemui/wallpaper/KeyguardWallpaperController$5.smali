.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 452
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    .line 455
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2bf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 460
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 429
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    .line 432
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 434
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
