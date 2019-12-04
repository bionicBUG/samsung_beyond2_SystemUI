.class public Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 22
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v1, 0x0

    const-string v2, "dismiss"

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimTrayWaterProtectionViewModel"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->dismiss()V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mIntentWraper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getSimTrayDialog(I)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;->mSimTrayWaterProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    :goto_0
    return-void
.end method
