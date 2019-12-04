.class Lcom/android/systemui/ImageWallpaper$GLEngine$1;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$GLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDisplayChanged$0$ImageWallpaper$GLEngine$1(I)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$400(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$400(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onDisplayChanged(ILandroid/view/SurfaceHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 512
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 513
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$1$04ZPAcS1-DSK6DuKWxmHl6qQhNU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$1$04ZPAcS1-DSK6DuKWxmHl6qQhNU;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
