.class public interface abstract Lcom/samsung/systemui/splugins/recents/PluginExRecents;
.super Ljava/lang/Object;
.source "PluginExRecents.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_EX_RECENTS"
    version = 0xbb9
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_EX_RECENTS"

.field public static final VERSION:I = 0xbb9


# virtual methods
.method public abstract getOverviewProxy()Landroid/os/IBinder;
.end method

.method public onStart(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V
    .locals 0

    return-void
.end method
