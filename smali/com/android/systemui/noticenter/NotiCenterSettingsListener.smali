.class public Lcom/android/systemui/noticenter/NotiCenterSettingsListener;
.super Ljava/lang/Object;
.source "NotiCenterSettingsListener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "lock_screen_show_notifications"

    .line 17
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "lockscreen_notifications_option"

    .line 18
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "lock_screen_allow_private_notifications"

    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 1

    .line 24
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public notifyInitialization()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->onChanged(Landroid/net/Uri;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "lock_screen_show_notifications"

    .line 40
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getShowNotificationOnKeyguardValue()I

    move-result p1

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "lockscreen_notifications_option"

    .line 44
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockScreenNotificationValue()I

    move-result p1

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "lock_screen_allow_private_notifications"

    .line 48
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockScreenPriavateNotificationsValue()I

    move-result p1

    .line 51
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    :goto_0
    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getPlugin()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->updateSettings(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
