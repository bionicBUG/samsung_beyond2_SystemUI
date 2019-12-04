.class Lcom/android/systemui/wallpaper/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


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
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 4

    .line 89
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    .line 90
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    .line 92
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$402(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    .line 100
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, p2

    .line 103
    :goto_1
    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitComplete() p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , f = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 111
    :cond_3
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move p2, v0

    :cond_5
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 114
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 120
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$800(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne p1, p2, :cond_7

    .line 121
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$900(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    :cond_7
    return-void
.end method
