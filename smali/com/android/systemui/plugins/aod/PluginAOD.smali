.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAOD;
.super Ljava/lang/Object;
.source "PluginAOD.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_AOD"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;,
        Lcom/android/systemui/plugins/aod/PluginAOD$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_AOD"

.field public static final REASON_MOD_DEFAULT:I = 0x1

.field public static final STATE_DOZE:I = 0x2

.field public static final STATE_DOZE_AOD:I = 0x4

.field public static final STATE_DOZE_AOD_PAUSED:I = 0x5

.field public static final STATE_DOZE_MOD:I = 0x6

.field public static final STATE_DOZE_REQUEST_AOD:I = 0x3

.field public static final STATE_FINISH:I = 0x7

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final TSP_ACTION_CHANGE_SINGLE_TOUCH_MODE:I = 0x1

.field public static final TSP_ACTION_NONE:I = 0x0

.field public static final TSP_ACTION_PERFORM_CLICK:I = 0x3

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAODClockContainer(Z)Landroid/view/View;
.end method

.method public abstract getAODClockType()I
.end method

.method public abstract getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;
.end method

.method public abstract getBottomArea()Landroid/view/View;
.end method

.method public abstract getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.end method

.method public abstract getLiveClockManager()Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager;
.end method

.method public abstract getMusicContentManager()Lcom/android/systemui/plugins/aod/PluginAODMusicContentManager;
.end method

.method public abstract getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end method

.method public abstract getRemoteViewsManager()Lcom/android/systemui/plugins/aod/PluginAODRemoteViewsManager;
.end method

.method public abstract getServiceBoxCalendarManager()Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;
.end method

.method public abstract getZigzagPosition()Landroid/graphics/Point;
.end method

.method public abstract hideChargingInfoByFinger(J)V
.end method

.method public abstract needDozeAlwaysOn()Z
.end method

.method public abstract onChargingAnimStarted(Z)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDozeAmountChanged(FF)V
.end method

.method public abstract onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V
.end method

.method public abstract sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract sendIntent(Landroid/content/Intent;)V
.end method

.method public abstract setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V
.end method

.method public abstract setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V
.end method

.method public abstract setDozeScreenState(II)V
.end method

.method public abstract setIsDozing(ZZ)V
.end method
