.class public Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotiCenterPluginListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;",
        ">;"
    }
.end annotation


# instance fields
.field mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

.field mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 136
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPluginConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hyobomi100"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$302(Lcom/android/systemui/noticenter/NotiCenterPlugin;Landroid/content/Context;)Landroid/content/Context;

    .line 150
    iget-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p2, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    .line 151
    iget-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setIsNotiCenterConnected(Z)V

    .line 152
    iget-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V

    .line 153
    const-class p1, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    invoke-virtual {p1}, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->notifyInitialization()V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$300(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$502(Lcom/android/systemui/noticenter/NotiCenterPlugin;F)F

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 136
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;I)V
    .locals 1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginDisconnected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hyobomi100"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setIsNotiCenterConnected(Z)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onChangedVisibilityOnKeyguard(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onNotiStarPanelShowOnKeyguard(Z)V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
