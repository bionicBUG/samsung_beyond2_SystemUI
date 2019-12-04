.class public interface abstract Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;
.super Ljava/lang/Object;
.source "FaceWidgetMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceWidgetMusicControllerListener"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isFaceWidgetMusicControllerDisabled()Z
.end method

.method public abstract onMusicButtonClicked(I)V
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setLyrics(Ljava/lang/String;)V
.end method

.method public abstract setMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract setMusicSessionActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract setPlaybackState(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract setSessionEnabled(Z)V
.end method
