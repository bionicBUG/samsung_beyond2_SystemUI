.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;
.super Ljava/lang/Object;
.source "PluginAODFaceWidgetManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract onClockPageTransitionEnded()V
.end method

.method public abstract onMusicButtonClicked(I)V
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract onPageSelected(I)V
.end method

.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager$Callback;)V
.end method
