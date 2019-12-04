.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
.method constructor <init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 123
    sget-boolean p1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz p1, :cond_0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->updateSessions()V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageRemoved() pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x2

    const-string v1, "servicebox_music_last_pkg"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 153
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$700(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->updateSessions()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$200(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$302(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    :cond_0
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$2;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    goto :goto_0

    .line 142
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
