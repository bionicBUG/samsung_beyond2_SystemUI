.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;
.super Landroid/os/Handler;
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

    .line 267
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 270
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    .line 333
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unsupported command ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    goto/16 :goto_0

    .line 325
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    goto/16 :goto_0

    .line 321
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    goto/16 :goto_0

    .line 315
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 316
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p0

    const-string p1, "SLEEP_LOCK"

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 309
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 310
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p0

    const-string p1, "ACTION_UNLOCK"

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 303
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "WAKE_LOCK"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 277
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 329
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)V

    goto :goto_0

    .line 273
    :pswitch_8
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/app/SemWallpaperColors;)V

    goto :goto_0

    .line 295
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    goto :goto_0

    .line 281
    :pswitch_a
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setVideoWallpaper(Z)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 286
    :cond_0
    sget-object p1, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    const-string v0, "INFINITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v3, "lockscreen_wallpaper"

    invoke-static {p1, v3, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 290
    :cond_1
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setVideoWallpaper(Z)V

    .line 291
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$1100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2bd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
