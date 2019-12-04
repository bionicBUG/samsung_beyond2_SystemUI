.class Lcom/android/systemui/ImageWallpaper$GLEngine$2;
.super Landroid/database/ContentObserver;
.source "ImageWallpaper.java"


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
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/os/Handler;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$ImageWallpaper$GLEngine$2()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 525
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 526
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$2$3g5NRwudPIb30c79yTNHj62Aj4Y;

    invoke-direct {p2, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$2$3g5NRwudPIb30c79yTNHj62Aj4Y;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
