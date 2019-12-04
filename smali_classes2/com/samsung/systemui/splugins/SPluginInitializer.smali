.class public interface abstract Lcom/samsung/systemui/splugins/SPluginInitializer;
.super Ljava/lang/Object;
.source "SPluginInitializer.java"


# virtual methods
.method public abstract getBgLooper()Landroid/os/Looper;
.end method

.method public abstract getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
.end method

.method public abstract getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract handleWtfs()V
.end method

.method public abstract onPluginManagerInit()V
.end method
