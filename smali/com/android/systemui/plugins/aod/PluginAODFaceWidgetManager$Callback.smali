.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;
.super Ljava/lang/Object;
.source "PluginAODFaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getClockSidePadding()I
.end method

.method public abstract getClockType()I
.end method

.method public abstract getCurrentPageKey()Ljava/lang/String;
.end method

.method public abstract getMinTopMargin()I
.end method

.method public abstract getPage(Ljava/lang/String;)Landroid/view/View;
.end method

.method public abstract getPluginLockClockGravity()I
.end method

.method public abstract getPluginLockTopMargin()I
.end method

.method public abstract hasMultiplePages()Z
.end method

.method public abstract requestAODState(ZZ)V
.end method

.method public abstract setPage(Ljava/lang/String;)V
.end method

.method public abstract setPageTransformer(Z)V
.end method
