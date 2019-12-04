.class public Landroidx/leanback/app/VideoSupportFragment;
.super Landroidx/leanback/app/PlaybackSupportFragment;
.source "VideoSupportFragment.java"


# instance fields
.field mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

.field mState:I

.field mVideoSurface:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/leanback/app/PlaybackSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroidx/leanback/app/VideoSupportFragment;->mState:I

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/PlaybackSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Landroidx/leanback/R$layout;->lb_video_surface:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    .line 46
    iget-object p2, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 47
    iget-object p2, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    new-instance p3, Landroidx/leanback/app/VideoSupportFragment$1;

    invoke-direct {p3, p0}, Landroidx/leanback/app/VideoSupportFragment$1;-><init>(Landroidx/leanback/app/VideoSupportFragment;)V

    invoke-interface {p2, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p0, p2}, Landroidx/leanback/app/PlaybackSupportFragment;->setBackgroundType(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Landroidx/leanback/app/VideoSupportFragment;->mState:I

    .line 118
    invoke-super {p0}, Landroidx/leanback/app/PlaybackSupportFragment;->onDestroyView()V

    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 5

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 94
    iget-object v2, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-int v3, v0, p2

    mul-int v4, p1, v1

    if-le v3, v4, :cond_0

    .line 97
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    div-int/2addr v4, p2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 101
    :cond_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 102
    div-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    :goto_0
    iget-object p0, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    .line 80
    iput-object p1, p0, Landroidx/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz p1, :cond_0

    .line 83
    iget p1, p0, Landroidx/leanback/app/VideoSupportFragment;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Landroidx/leanback/app/VideoSupportFragment;->mMediaPlaybackCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object p0, p0, Landroidx/leanback/app/VideoSupportFragment;->mVideoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method