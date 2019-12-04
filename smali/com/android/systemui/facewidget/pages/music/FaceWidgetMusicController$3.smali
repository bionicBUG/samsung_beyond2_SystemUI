.class Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;
.super Ljava/lang/Object;
.source "FaceWidgetMusicController.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor$OnPlaybackStateChangedListener;


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

    .line 550
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$900(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$900(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 666
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1, p2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1002(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz p2, :cond_2

    .line 669
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged() metadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$902(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 580
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1002(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "servicebox_music_last_pkg"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$800(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v1, :cond_2

    .line 587
    invoke-interface {v1, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPendingIntentChanged(Landroid/app/PendingIntent;)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1402(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$302(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged() / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$800(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    .line 562
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v0, :cond_1

    .line 564
    invoke-interface {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSessionActivityChanged()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 649
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v1, :cond_0

    .line 651
    invoke-interface {v1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setMusicSessionActivity(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .locals 4

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionChanged() session is changed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    .line 598
    invoke-interface {v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->isFaceWidgetMusicControllerDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    return-void

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1102(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1300(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1202(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 613
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz p1, :cond_4

    .line 618
    invoke-interface {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public declared-synchronized onSessionDestroyed(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "FaceWidgetMusicController_LOCK"

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionDestroyed() sessionPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mLastPackageName = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$200(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)V

    .line 627
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$302(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 629
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$400(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

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

    .line 635
    invoke-interface {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 638
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSessionEnabled(Z)V
    .locals 3

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionEnabled() enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastSession = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    .line 677
    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeSession = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1700(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetMusicController_LOCK"

    .line 676
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    .line 680
    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1100(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1700(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetPlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onSessionEnabled() Set enabled to true because LastSession and TopSession are same"

    .line 681
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1600(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$1602(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;Z)Z

    .line 690
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$3;->this$0:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->access$500(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;

    if-eqz v0, :cond_2

    .line 692
    invoke-interface {v0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;->setSessionEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
