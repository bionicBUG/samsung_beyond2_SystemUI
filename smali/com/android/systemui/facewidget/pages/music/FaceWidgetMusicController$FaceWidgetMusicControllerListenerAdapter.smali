.class public Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListenerAdapter;
.super Ljava/lang/Object;
.source "FaceWidgetMusicController.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceWidgetMusicControllerListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public isFaceWidgetMusicControllerDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMusicButtonClicked(I)V
    .locals 0

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public setMusicSessionActivity(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 0

    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 0

    return-void
.end method
