.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager;
.super Ljava/lang/Object;
.source "PluginAODServiceBoxCalendarManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract setCallback(Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager$Callback;)V
.end method

.method public abstract updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
