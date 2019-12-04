.class public interface abstract Lcom/android/systemui/plugins/aod/PluginTspEventCallback;
.super Ljava/lang/Object;
.source "PluginTspEventCallback.java"


# virtual methods
.method public abstract containsTouchableRect(II)Z
.end method

.method public abstract getTouchableRect()Landroid/graphics/Rect;
.end method

.method public abstract getTspEventAction()I
.end method

.method public abstract isWakeUpAction()Z
.end method

.method public abstract onTspEvent(Landroid/view/View;Lcom/android/systemui/plugins/aod/PluginTspEvent;)Z
.end method
