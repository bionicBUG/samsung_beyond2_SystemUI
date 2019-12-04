.class Landroidx/leanback/media/MediaPlayerGlue$2;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public mFirstRepeat:Z

.field final synthetic this$0:Landroidx/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 362
    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 366
    :cond_0
    iget-object p0, p0, Landroidx/leanback/media/MediaPlayerGlue$2;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackControlGlue;->play()V

    return-void
.end method
