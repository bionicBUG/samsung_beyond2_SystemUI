.class public Lcom/android/systemui/popup/PopupUI;
.super Lcom/android/systemui/SystemUI;
.source "PopupUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPopupUIReceiver:Landroid/content/BroadcastReceiver;

.field private mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

.field private mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

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
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 85
    new-instance v0, Lcom/android/systemui/popup/PopupUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/util/PopupUILogWrapper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onUiModeChanged()V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 114
    invoke-interface {v0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    .line 62
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 69
    new-instance v0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUI;->mUtilFactory:Lcom/android/systemui/popup/util/PopupUIUtilFactory;

    new-instance v2, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtilFactory;)V

    iget-boolean v3, p0, Lcom/android/systemui/popup/PopupUI;->mHasMobileDataFeature:Z

    iget-boolean v4, p0, Lcom/android/systemui/popup/PopupUI;->mHasVoiceCallingFeature:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;-><init>(Lcom/android/systemui/popup/util/PopupUIUtilFactory;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelFactory:Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;

    invoke-virtual {v0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModelFactory;->getPopupUIViewModelList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    .line 74
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 76
    invoke-interface {v1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 81
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.samsung.systemui.POPUP_UI_PERMISSION"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
