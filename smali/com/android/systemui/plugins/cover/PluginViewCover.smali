.class public interface abstract Lcom/android/systemui/plugins/cover/PluginViewCover;
.super Ljava/lang/Object;
.source "PluginViewCover.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_VIEW_COVER"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_VIEW_COVER"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.end method

.method public abstract getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end method

.method public abstract getRemoteViewsManager()Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;
.end method

.method public abstract getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCoverAppCovered(Z)V
.end method

.method public abstract onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onCoverDetached()V
.end method

.method public abstract onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
.end method

.method public abstract onScreenInternalTurningOff()V
.end method

.method public abstract onScreenInternalTurningOn()V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurningOn()V
.end method
