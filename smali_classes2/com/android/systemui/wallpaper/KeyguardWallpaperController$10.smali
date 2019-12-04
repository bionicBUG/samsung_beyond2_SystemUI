.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setRootView(Landroid/view/ViewGroup;)V
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

    .line 1538
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1542
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I

    move-result p2

    if-eq p2, p5, :cond_0

    .line 1543
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLayoutChange() v: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bottom : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", oldBottom : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1, p5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2802(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I

    .line 1545
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$2900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    :cond_0
    return-void
.end method
