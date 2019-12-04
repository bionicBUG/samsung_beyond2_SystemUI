.class Landroidx/leanback/media/PlaybackGlue$1;
.super Landroidx/leanback/media/PlaybackGlue$PlayerCallback;
.source "PlaybackGlue.java"


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/PlaybackGlue;


# virtual methods
.method public onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Landroidx/leanback/media/PlaybackGlue$1;->this$0:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlaybackGlue;->removePlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 156
    iget-object p0, p0, Landroidx/leanback/media/PlaybackGlue$1;->this$0:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->play()V

    :cond_0
    return-void
.end method
