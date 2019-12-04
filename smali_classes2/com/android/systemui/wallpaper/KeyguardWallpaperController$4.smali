.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardWallpaperController.java"


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

    .line 349
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    return-void
.end method

.method public onDlsViewModeChanged(I)V
    .locals 1

    .line 421
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    return-void
.end method

.method public onOpenThemeChangeStarted()V
    .locals 2

    .line 364
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenThemeChangeStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 3

    .line 370
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenThemeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez v0, :cond_2

    .line 388
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOpenThemeChanged() current color is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 3

    .line 396
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpenThemeReApply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setIsThemeApplying(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez v0, :cond_2

    .line 412
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOpenThemeChanged() current color is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    return-void
.end method
