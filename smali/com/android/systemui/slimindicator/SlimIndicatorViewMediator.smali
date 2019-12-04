.class public Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;
.super Ljava/lang/Object;
.source "SlimIndicatorViewMediator.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

.field private mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mSubscriberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-direct {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    return-void
.end method

.method private getSubscriberTicketList()Ljava/lang/String;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string p0, "nothing"

    return-object p0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 183
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyNewsToOperatorLogo()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->requestUpdateCarrierInformationToNetwork()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", HOME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LOCK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLockCarrierDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", PANEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPanelCarrierDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;Lcom/android/systemui/slimindicator/SlimIndicatorManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    return-void
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 1

    .line 141
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHiddenBatteryIcon()Z
    .locals 1

    .line 174
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "battery_icon"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeCarrierDisabled()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isHomeCarrierDisabled()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHidden()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftClockPosition()Z
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "left_clock_position"

    .line 151
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "middle_clock_position"

    .line 153
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "right_clock_position"

    .line 154
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public isLockCarrierDisabled()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isLockCarrierDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMiddleClockPosition()Z
    .locals 1

    .line 162
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "middle_clock_position"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->isPanelCarrierDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPluginConnected()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mManager:Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightClockPosition()Z
    .locals 1

    .line 168
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getIconBlacklist()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const-string p0, "right_clock_position"

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onTuningChanged$0$SlimIndicatorViewMediator()V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->notifyNewsToSubscribers()V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->notifyNewsToOperatorLogo()V

    return-void
.end method

.method public notifyNewsToSubscribers()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->updateAllData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/slimindicator/-$$Lambda$SlimIndicatorViewMediator$L-CMU6wD2WGT-urt4InygIC_fN4;

    invoke-direct {p2, p0}, Lcom/android/systemui/slimindicator/-$$Lambda$SlimIndicatorViewMediator$L-CMU6wD2WGT-urt4InygIC_fN4;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSubscriber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {p2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;->updateQuickStarStyle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterSubscriber(Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterSubscriber("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->getSubscriberTicketList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SlimIndicatorViewMediator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
