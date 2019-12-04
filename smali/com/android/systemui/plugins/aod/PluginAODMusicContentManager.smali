.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;
.super Ljava/lang/Object;
.source "PluginAODMusicContentManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isMusicControllerDisabled()Z
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;)V
.end method

.method public abstract setMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract setMusicSessionActivity(Landroid/app/PendingIntent;)V
.end method

.method public abstract setPlaybackState(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract setSessionEnabled(Z)V
.end method
