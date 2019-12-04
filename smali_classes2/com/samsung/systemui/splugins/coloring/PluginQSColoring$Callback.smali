.class public interface abstract Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;
.super Ljava/lang/Object;
.source "PluginQSColoring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract applyColoring(Z)V
.end method

.method public abstract applyColoringBlurEffect(ZF)V
.end method

.method public abstract applyColoringButtonGrid(I)V
.end method

.method public abstract applyColoringDimEffect(ZF)V
.end method

.method public abstract applyColoringResources()V
.end method

.method public abstract applyNotificationColoring(Z)V
.end method

.method public abstract getQSPanelColors()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
