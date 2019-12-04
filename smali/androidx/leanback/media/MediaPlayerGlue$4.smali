.class Landroidx/leanback/media/MediaPlayerGlue$4;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 446
    iget-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue$4;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    .line 447
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;

    .line 450
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue$4;->this$0:Landroidx/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method
