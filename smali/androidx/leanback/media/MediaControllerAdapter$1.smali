.class Landroidx/leanback/media/MediaControllerAdapter$1;
.super Ljava/lang/Object;
.source "MediaControllerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/MediaControllerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/MediaControllerAdapter;


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/PlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 56
    iget-object v0, p0, Landroidx/leanback/media/MediaControllerAdapter$1;->this$0:Landroidx/leanback/media/MediaControllerAdapter;

    iget-object v1, v0, Landroidx/leanback/media/MediaControllerAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroidx/leanback/media/MediaControllerAdapter;->getUpdatePeriod()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
