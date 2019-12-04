.class Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;
.super Landroid/database/ContentObserver;
.source "ImageMotionEffectChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->access$000(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->isTiltSettingEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->access$102(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;Z)Z

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange() mWallpaperTiltSettingChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->access$100(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageMotionEffectChecker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->access$200(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;->access$200(Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker;)Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageMotionEffectChecker$MotionSettingsChangedCallback;->onTiltMotionSettingsChanged()V

    :cond_1
    return-void
.end method
