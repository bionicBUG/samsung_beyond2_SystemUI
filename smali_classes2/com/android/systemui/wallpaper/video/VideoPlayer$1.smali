.class Lcom/android/systemui/wallpaper/video/VideoPlayer$1;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 74
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/samsung/android/media/SemMediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$100(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$002(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer;

    :goto_0
    return-void
.end method
