.class public interface abstract Lcom/samsung/systemui/splugins/SPluginEnabler;
.super Ljava/lang/Object;
.source "SPluginEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginEnabler$DisableReason;
    }
.end annotation


# static fields
.field public static final DISABLED_FROM_EXPLICIT_CRASH:I = 0x2

.field public static final DISABLED_FROM_SYSTEM_CRASH:I = 0x3

.field public static final DISABLED_INVALID_VERSION:I = 0x1

.field public static final DISABLED_MANUALLY:I = 0x1

.field public static final ENABLED:I


# virtual methods
.method public abstract getDisableReason(Landroid/content/ComponentName;)I
    .annotation build Lcom/samsung/systemui/splugins/SPluginEnabler$DisableReason;
    .end annotation
.end method

.method public abstract isEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract setDisabled(Landroid/content/ComponentName;I)V
    .param p2    # I
        .annotation build Lcom/samsung/systemui/splugins/SPluginEnabler$DisableReason;
        .end annotation
    .end param
.end method

.method public abstract setEnabled(Landroid/content/ComponentName;)V
.end method
