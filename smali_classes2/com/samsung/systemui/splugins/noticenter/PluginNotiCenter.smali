.class public interface abstract Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
.super Ljava/lang/Object;
.source "PluginNotiCenter.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_NOTICENTER"
    version = 0xbb9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_NOTICENTER"

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION:I = 0x1

.field public static final VERSION:I = 0xbb9


# virtual methods
.method public abstract enterKeyguard()V
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0xbb9

    return p0
.end method

.method public abstract insert(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract requestVocHelp(Landroid/os/Bundle;Landroid/service/notification/StatusBarNotification;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        version = 0xbb9
    .end annotation
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V
.end method

.method public abstract unLock()V
.end method

.method public abstract updateSettings(Landroid/os/Bundle;)V
.end method
