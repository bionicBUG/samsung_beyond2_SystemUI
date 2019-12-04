.class Landroidx/leanback/media/MediaPlayerGlue$3;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 374
    iget-object p0, p0, Landroidx/leanback/media/MediaPlayerGlue$3;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->play()V

    return-void
.end method
