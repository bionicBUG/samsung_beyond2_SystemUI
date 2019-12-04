.class public interface abstract Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
.super Ljava/lang/Object;
.source "PluginSubScreen.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end method

.method public abstract onSubUIStarted(Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end method

.method public abstract onSubUIStopped()V
.end method
