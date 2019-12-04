.class public interface abstract Lcom/android/systemui/shared/plugins/PluginEnabler;
.super Ljava/lang/Object;
.source "PluginEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
    }
.end annotation


# virtual methods
.method public abstract getDisableReason(Landroid/content/ComponentName;)I
    .annotation build Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
    .end annotation
.end method

.method public abstract isEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract setDisabled(Landroid/content/ComponentName;I)V
    .param p2    # I
        .annotation build Lcom/android/systemui/shared/plugins/PluginEnabler$DisableReason;
        .end annotation
    .end param
.end method

.method public abstract setEnabled(Landroid/content/ComponentName;)V
.end method
