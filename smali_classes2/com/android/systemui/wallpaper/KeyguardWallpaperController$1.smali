.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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

    .line 200
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ultra_powersaving_mode"

    .line 206
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "upsm_or_emergency_mode_changed"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 207
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    .line 208
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    move v3, v4

    goto/16 :goto_1

    :cond_0
    const-string v1, "emergency_mode"

    .line 210
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    .line 212
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "lockscreen_wallpaper"

    .line 214
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v3}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    .line 216
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I

    move v3, v4

    .line 220
    :cond_2
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 221
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "lockscreen_wallpaper_sub"

    .line 223
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperType(I)I

    move-result p1

    .line 225
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result v1

    if-eq v1, p1, :cond_7

    .line 227
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$202(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I

    goto/16 :goto_0

    :cond_4
    const-string v1, "lock_adaptive_color"

    .line 230
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {p1, v1, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v4, :cond_5

    move v3, v4

    .line 232
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    .line 233
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged() adaptive color mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x25c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    const-string v1, "lockscreen_wallpaper_transparent"

    .line 239
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 240
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 256
    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChanged() called isUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 258
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x259

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    return-void

    .line 241
    :cond_9
    :goto_2
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->initFlags()V

    return-void
.end method
