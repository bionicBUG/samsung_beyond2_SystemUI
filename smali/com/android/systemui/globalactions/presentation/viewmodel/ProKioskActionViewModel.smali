.class public Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;
.super Ljava/lang/Object;
.source "ProKioskActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

.field private final mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

.field private final mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    .line 41
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 42
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 43
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    return-void
.end method

.method private disableProKioskMode()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->setProKioskState(ZLjava/lang/String;)I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    if-nez v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SystemController;->goToHome()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public synthetic lambda$onPress$0$ProKioskActionViewModel()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->disableProKioskMode()V

    return-void
.end method

.method public synthetic lambda$onPress$1$ProKioskActionViewModel()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public onPress()V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-wide/16 v5, 0x7

    const-string v2, "611"

    const-string v3, "6111"

    const-string v4, "Pro kiosk"

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$pFm7zjBNE4KZfZ88DYRFpTDKIqU;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$pFm7zjBNE4KZfZ88DYRFpTDKIqU;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V

    new-instance v2, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$0x3jxZrfTBrxVUoor2gKFx9Ya0o;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$ProKioskActionViewModel$0x3jxZrfTBrxVUoor2gKFx9Ya0o;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskModeDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getExitUI(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v3, 0xde

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getExitUI(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    if-ne v3, v4, :cond_0

    .line 99
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    goto :goto_0

    .line 101
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "."

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 110
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/globalactions/util/SystemController;->startProKioskExitUI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 119
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    :cond_5
    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 4

    .line 58
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->getProKioskString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v3, 0x104042a

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v0, 0x104041c

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 78
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v0, 0x104041b

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
