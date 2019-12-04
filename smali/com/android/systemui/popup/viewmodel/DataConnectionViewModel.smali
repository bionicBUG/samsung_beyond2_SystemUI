.class public Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
.super Ljava/lang/Object;
.source "DataConnectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private final mHasMobileDataFeature:Z

.field private final mHasVoiceCallingFeature:Z

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;ZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    .line 30
    iput-boolean p7, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    .line 31
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 35
    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isNoReadySim()Z

    move-result v0

    const-string v1, "DataConnectionViewModel"

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v2, -0x1

    const-string/jumbo v3, "type"

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 50
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v3, 0x0

    const-string v4, "no_signal_retry_enable"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    .line 51
    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v5, "no_signal_retry_intent"

    invoke-virtual {v4, p1, v5}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 53
    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v3, v0, v2, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p1, :cond_3

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string/jumbo p1, "show() invalid AlertDialog"

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 44
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v0, "Not ready to show DataConnectionErrorDialog()"

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    sget p1, Lcom/android/systemui/R$string;->data_connection_error_toast_notification:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
