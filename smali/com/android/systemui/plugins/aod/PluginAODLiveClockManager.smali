.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager;
.super Ljava/lang/Object;
.source "PluginAODLiveClockManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;
    }
.end annotation


# static fields
.field public static final TYPE_ANALOG:I = 0x1

.field public static final TYPE_DIGITAL:I = 0x2

.field public static final TYPE_ICON:I = 0x3


# virtual methods
.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODLiveClockManager$Callback;)V
.end method
