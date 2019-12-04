.class Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MumAndDexHelper"
.end annotation


# instance fields
.field private IsDexEnablingOrEnabled:Z

.field private final MUM_RUNE:Z

.field private final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field private mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field final synthetic this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;


# direct methods
.method private constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 3

    .line 744
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_LDU_POPUP:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->MUM_RUNE:Z

    const/4 p1, 0x0

    .line 746
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "two_call_enabled"

    .line 748
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "two_sms_enabled"

    .line 749
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    const-string v0, "two_account"

    .line 750
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x3

    const-string v0, "two_register"

    .line 751
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, p1

    iput-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 753
    new-instance p1, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$oCcm1KoOmuDUjwiquCK5zTubpC4;

    invoke-direct {p1, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$oCcm1KoOmuDUjwiquCK5zTubpC4;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;)V

    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method synthetic constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;Lqs/src/com/android/systemui/qs/QSMiscContainer$1;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    return-void
.end method

.method private updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 804
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 805
    :goto_0
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    if-eq v0, p1, :cond_2

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MumAndDexHelper updateDesktopModeState() IsDexEnablingOrEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSMiscContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iput-boolean p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    .line 808
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    new-instance v0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$sTbN42s9lCi40yyxjzOEOv6HsTc;

    invoke-direct {v0, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$sTbN42s9lCi40yyxjzOEOv6HsTc;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 784
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->MUM_RUNE:Z

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 786
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 787
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    return-void
.end method

.method public init()V
    .locals 3

    .line 760
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->MUM_RUNE:Z

    if-nez v0, :cond_0

    return-void

    .line 761
    :cond_0
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 762
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-direct {p0, v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 763
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 764
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1300(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 767
    :cond_1
    new-instance v0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->mBaseUserAdapter:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    return-void
.end method

.method public synthetic lambda$new$0$QSMiscContainer$MumAndDexHelper()V
    .locals 0

    .line 755
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method public synthetic lambda$new$1$QSMiscContainer$MumAndDexHelper(Landroid/net/Uri;)V
    .locals 1

    const-string p1, "QSMiscContainer"

    const-string v0, "MumAndDexHelper receive SettingsHelper callback !"

    .line 754
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    new-instance v0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$hc_YzAysuVXlIvX3oneTOIcReDM;

    invoke-direct {v0, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$hc_YzAysuVXlIvX3oneTOIcReDM;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onDesktopModeStateChanged$2$QSMiscContainer$MumAndDexHelper()V
    .locals 0

    .line 798
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->updateEverything()V

    return-void
.end method

.method public synthetic lambda$onUserInfoChanged$4$QSMiscContainer$MumAndDexHelper()V
    .locals 0

    .line 856
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method public synthetic lambda$updateDesktopModeState$3$QSMiscContainer$MumAndDexHelper()V
    .locals 0

    .line 808
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method public needToBeVisibleMUM()Z
    .locals 4

    .line 813
    iget-boolean v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->MUM_RUNE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    iget-object v0, v0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 817
    iget-boolean v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    if-nez v3, :cond_2

    .line 818
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 819
    invoke-static {v3}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/android/systemui/util/DesktopManager;

    .line 820
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v3}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    .line 821
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 822
    invoke-static {v3}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 824
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MumAndDexHelper.needToBeVisible() result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasMultiUsers?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", DeviceState.isDesktopMode?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 826
    invoke-static {v0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", DesktopManager.isDesktopMode?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 827
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IsDexEnablingOrEnabled:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->IsDexEnablingOrEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QSMiscContainer"

    .line 824
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const-string v0, "QSMiscContainer"

    const-string v1, "MumAndDexHelper, onDesktopModeStateChanged()"

    .line 796
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 798
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    new-instance v0, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$fDxASSezzDuIU047hmInB7CXJxI;

    invoke-direct {v0, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$fDxASSezzDuIU047hmInB7CXJxI;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 840
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MumAndDexHelper, onUserInfoChanged(name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userAccount:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "QSMiscContainer"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    .line 843
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 844
    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p1, :cond_2

    .line 846
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object p2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p2}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 847
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 848
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicBackground:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 850
    :cond_1
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 851
    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p1

    const p3, 0x1010030

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 850
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 855
    :cond_2
    :goto_0
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1500(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    new-instance p2, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$5j6U0yHxZ0RbFUwma7c0gKeAN58;

    invoke-direct {p2, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$5j6U0yHxZ0RbFUwma7c0gKeAN58;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateMumSwitchVisibility()V
    .locals 1

    .line 833
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    iget-object v0, v0, Lqs/src/com/android/systemui/qs/QSMiscContainer;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->needToBeVisibleMUM()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
