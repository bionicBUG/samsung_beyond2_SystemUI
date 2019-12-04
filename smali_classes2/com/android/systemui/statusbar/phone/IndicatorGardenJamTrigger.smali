.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;
.super Ljava/lang/Object;
.source "IndicatorGardenJamTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    .line 53
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->setUpFakeIcons()V

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showFakeIcons()V

    const/4 p1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showShowBatteryPercentSettingsValue(Z)V

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->makeNotifications()V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->showNetworkSpeedText(Z)V

    return-void
.end method

.method private makeNotifications()V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "IndicatorGardenJamTrigger"

    const-string v2, "makeNotifications()"

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    .line 111
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 112
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    if-nez v5, :cond_1

    goto :goto_2

    .line 114
    :cond_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v7, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    .line 116
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 117
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    .line 119
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    .line 120
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/high16 v6, -0x10000

    .line 121
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-static {v6, v5, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 123
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x3

    .line 124
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 125
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private setUpFakeIcons()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    :cond_0
    const-string v0, "IndicatorGardenJamTrigger"

    const-string v1, "setUpFakeIcons()"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040aea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    const-string v4, "FakeAirplane"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b03

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->ic_lte_mobiledata:I

    const-string v4, "FakeMobile"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b17

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    const-string v4, "FakeWifi"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040af6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_ethernet:I

    const-string v4, "FakeEthernet"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b16

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    const-string v4, "FakeVPN"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040af1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    const-string v4, "FakeCast"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040afa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    const-string v4, "FakeHotSpot"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040aee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_data_bluetooth_connected:I

    const-string v4, "FakeBluetoothConnected"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b14

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_tty_mode:I

    const-string v4, "FakeTTY"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b18

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    const-string v4, "FakeZen"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b15

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_ringer_vibrate:I

    const-string v4, "FakeVolume"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040aeb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_stat_sys_alarm:I

    const-string v4, "FakeAlarmClock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v3, 0x1040b0d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_rotate_portrait:I

    const-string v4, "FakeRotate"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mContext:Landroid/content/Context;

    const v2, 0x1040af9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_headset:I

    const-string v3, "FakeHeadset"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private showFakeIcons()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "IndicatorGardenJamTrigger"

    const-string v1, "showFakeIcons()"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mFakeIconList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;

    if-nez v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private showNetworkSpeedText(Z)V
    .locals 1

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showNetworkSpeedText(show:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IndicatorGardenJamTrigger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showShowBatteryPercentSettingsValue(Z)V
    .locals 1

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setShowBatteryPercentSettingsValue(show:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IndicatorGardenJamTrigger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setShowBatteryPercentInStatusBar(I)V

    return-void
.end method
