.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;


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

    .line 465
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 469
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method
