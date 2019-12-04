.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager$Callback;
.super Ljava/lang/Object;
.source "PluginAODMusicContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract registerListener()V
.end method

.method public abstract requestLastMusicContent()V
.end method

.method public abstract sendKeyCode(I)V
.end method

.method public abstract unregisterListener()V
.end method
