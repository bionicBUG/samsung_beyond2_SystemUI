.class public interface abstract Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
.super Ljava/lang/Object;
.source "PluginMultiStar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_MULTISTAR"
    version = 0xbbf
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_MULTISTAR"

.field public static final VERSION:I = 0xbbf


# virtual methods
.method public abstract getDockedStackListener()Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
.end method

.method public abstract getMultiWindowEventListener()Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;
.end method

.method public abstract getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/multistar/PluginMultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;)V
.end method

.method public abstract isSnapWindowRunning()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onLongPressRecents()Z
.end method

.method public abstract showDividerPanelView(ZZZ)V
.end method

.method public abstract showDividerPopupVisible(ZZ)V
.end method

.method public abstract showSnapWindowGuideView(ILjava/lang/String;)V
.end method
