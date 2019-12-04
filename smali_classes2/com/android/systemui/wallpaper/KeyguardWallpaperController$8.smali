.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


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

    .line 487
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 6

    .line 491
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result p1

    .line 492
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v0

    if-eq v0, p1, :cond_4

    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 494
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    .line 495
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v4

    .line 496
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    invoke-static {v5, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2602(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    .line 497
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisplayChanged: which = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentWhich = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 498
    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isSecure = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", userCanSkipBouncer = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2502(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I

    .line 502
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCurrentWhich(I)V

    .line 503
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 509
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 510
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)V

    goto :goto_1

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 512
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    :cond_4
    :goto_1
    return-void
.end method
