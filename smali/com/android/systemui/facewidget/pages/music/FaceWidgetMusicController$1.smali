.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;
.super Landroid/os/Handler;
.source "FaceWidgetMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/os/Looper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    iget-object v1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->title:Ljava/lang/String;

    const-string v2, "servicebox_music_last_title"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    iget-object v1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->artist:Ljava/lang/String;

    const-string v2, "servicebox_music_last_artist"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    iget-object v1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->pkgName:Ljava/lang/String;

    const-string v2, "servicebox_music_last_pkg"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCurrentDataToDB() handler, pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$MusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, -0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceWidgetMusicController_LOCK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$1;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$102(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;J)J

    return-void
.end method
