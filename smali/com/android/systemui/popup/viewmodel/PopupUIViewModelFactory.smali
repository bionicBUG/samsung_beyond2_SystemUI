.class public Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;
.super Ljava/lang/Object;
.source "PopupUIViewModelFactory.java"


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

.field private mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUIUtilFactory;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;ZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    .line 21
    iput-boolean p3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasMobileDataFeature:Z

    .line 22
    iput-boolean p4, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasVoiceCallingFeature:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->createPopupUIViewModel()V

    return-void
.end method

.method private createPopupUIViewModel()V
    .locals 10

    .line 30
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v9, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasMobileDataFeature:Z

    iget-boolean v8, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mHasVoiceCallingFeature:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;ZZ)V

    .line 30
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v3}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v4}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/popup/viewmodel/SimTrayWaterProtectionViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUILogWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v3}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    .line 35
    invoke-virtual {v4}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/popup/util/PopupUILogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-boolean v0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_MOBILE_DEVICE_WARNING_POPUP:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;

    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {p0}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getIntentWrapper()Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;-><init>(Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPopupUIViewModelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->mViewModelList:Ljava/util/List;

    return-object p0
.end method
