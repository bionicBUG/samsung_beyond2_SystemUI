.class public Landroidx/leanback/app/DetailsFragmentBackgroundController;
.super Ljava/lang/Object;
.source "DetailsFragmentBackgroundController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCanUseHost:Z

.field final mFragment:Landroidx/leanback/app/DetailsFragment;

.field mInitialControlVisible:Z

.field private mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

.field mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

.field mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;


# virtual methods
.method public canNavigateToVideoFragment()Z
    .locals 0

    .line 278
    iget-object p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method createGlueHost()Landroidx/leanback/media/PlaybackGlueHost;
    .locals 2

    .line 404
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->onCreateGlueHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 405
    iget-boolean p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 406
    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    :goto_0
    return-object v0
.end method

.method disableVideoParallax()Z
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->stopParallax()V

    .line 344
    iget-object p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->isVideoVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 0

    .line 422
    iget-object p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragment;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public onCreateGlueHost()Landroidx/leanback/media/PlaybackGlueHost;
    .locals 1

    .line 400
    new-instance v0, Landroidx/leanback/app/VideoFragmentGlueHost;

    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/leanback/app/VideoFragment;

    invoke-direct {v0, p0}, Landroidx/leanback/app/VideoFragmentGlueHost;-><init>(Landroidx/leanback/app/VideoFragment;)V

    return-object v0
.end method

.method public onCreateVideoFragment()Landroid/app/Fragment;
    .locals 0

    .line 385
    new-instance p0, Landroidx/leanback/app/VideoFragment;

    invoke-direct {p0}, Landroidx/leanback/app/VideoFragment;-><init>()V

    return-object p0
.end method

.method onStart()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    .line 321
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->createGlueHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 323
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    .line 326
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->play()V

    :cond_1
    return-void
.end method

.method onStop()V
    .locals 0

    .line 332
    iget-object p0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackGlue;->pause()V

    :cond_0
    return-void
.end method

.method switchToVideoBeforeCreate()V
    .locals 2

    .line 282
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 283
    iput-boolean v1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    return-void
.end method
