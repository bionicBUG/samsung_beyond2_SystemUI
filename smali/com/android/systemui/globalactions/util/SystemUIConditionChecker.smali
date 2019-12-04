.class public Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;
.super Ljava/lang/Object;
.source "SystemUIConditionChecker.java"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# instance fields
.field private final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isCellularDataAllowed()Z

    move-result p1

    goto/16 :goto_0

    .line 30
    :cond_0
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isSettingsChangesAllowed()Z

    move-result p1

    goto/16 :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isPowerOffAllowed()Z

    move-result p1

    goto/16 :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->isSafeModeAllowed()Z

    move-result p1

    goto/16 :goto_0

    .line 36
    :cond_3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProkioskState()Z

    move-result p1

    goto/16 :goto_0

    .line 38
    :cond_4
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->getPowerDialogCustomItemsState()Z

    move-result p1

    goto/16 :goto_0

    .line 40
    :cond_5
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->isAllowedShowActions()Z

    move-result p1

    goto/16 :goto_0

    .line 42
    :cond_6
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 43
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->isClearCoverClosed()Z

    move-result p1

    goto :goto_0

    .line 44
    :cond_7
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 45
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->isKioskMode()Z

    move-result p1

    goto :goto_0

    .line 46
    :cond_8
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 47
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/StatusBarWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/StatusBarWrapper;->isStatusBarExpandDisabled()Z

    move-result p1

    goto :goto_0

    .line 48
    :cond_9
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/util/CoverUtilWrapper;->isClearSideCoverClosed()Z

    move-result p1

    goto :goto_0

    .line 50
    :cond_a
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CALLED_FROM_QUICK_PANEL:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 51
    sget-boolean p1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->CALLED_FROM_QUICKPANEL:Z

    .line 52
    sput-boolean v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->CALLED_FROM_QUICKPANEL:Z

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    .line 55
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v1, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-nez v2, :cond_c

    .line 59
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIConditionChecker"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return p1
.end method
