.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 1

    .line 1793
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$1;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method