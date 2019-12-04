.class public interface abstract Lcom/android/systemui/plugins/clockpack/PluginClockPack;
.super Ljava/lang/Object;
.source "PluginClockPack.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract onChargingAnimStarted(Z)V
.end method

.method public abstract onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onSystemUIConfigurationChanged(Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V
.end method

.method public abstract sendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V
.end method
