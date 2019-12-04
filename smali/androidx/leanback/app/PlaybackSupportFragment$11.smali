.class Landroidx/leanback/app/PlaybackSupportFragment$11;
.super Landroidx/leanback/widget/PlaybackSeekUi$Client;
.source "PlaybackSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSeekDataProvider()Landroidx/leanback/widget/PlaybackSeekDataProvider;
    .locals 0

    .line 1145
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroidx/leanback/widget/PlaybackSeekDataProvider;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isSeekEnabled()Z
    .locals 0

    .line 1132
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onSeekFinished(Z)V
    .locals 1

    .line 1157
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    .line 1160
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/app/PlaybackSupportFragment;->setSeekMode(Z)V

    return-void
.end method

.method public onSeekPositionChanged(J)V
    .locals 0

    .line 1150
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    if-eqz p0, :cond_0

    .line 1151
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    :cond_0
    return-void
.end method

.method public onSeekStarted()V
    .locals 1

    .line 1137
    iget-object v0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    .line 1140
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$11;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/app/PlaybackSupportFragment;->setSeekMode(Z)V

    return-void
.end method
