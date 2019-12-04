.class public Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
.super Ljava/lang/Object;
.source "PopupUIAlertDialogFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissDialog:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mShowingDialog:Ljava/lang/Runnable;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtilFactory;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$1;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory$2;-><init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getUtils()Lcom/android/systemui/popup/util/PopupUIUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 27
    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getToastWrapper()Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 28
    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getLogWrapper()Lcom/android/systemui/popup/util/PopupUILogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 29
    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getDisplayManagerWrapper()Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    .line 30
    invoke-virtual {p2}, Lcom/android/systemui/popup/util/PopupUIUtilFactory;->getKeyguardUpdateMonitorWrapper()Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method private initializeDialog()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    invoke-interface {v0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    :cond_1
    return-void
.end method


# virtual methods
.method public getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 10

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isCellularDataAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string p1, "PopupUIAlertDialogFactory"

    const-string p2, "Attempt mobile data connection is blocked by Knox"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 61
    :cond_2
    new-instance v0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    iget-object v8, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v2, v0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;-><init>(Landroid/content/Context;IZLandroid/app/PendingIntent;Lcom/android/systemui/popup/util/PopupUILogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    goto :goto_0

    .line 65
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p0
.end method

.method public getOverheatWarningDialog(Ljava/lang/String;ZZ)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 1

    const-string v0, "SSRM"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 79
    new-instance p1, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;

    iget-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUILogWrapper;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimTrayDialog(I)Lcom/android/systemui/popup/view/PopupUIAlertDialog;
    .locals 7

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->initializeDialog()V

    .line 73
    new-instance v6, Lcom/android/systemui/popup/view/SimTrayDialog;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mShowingDialog:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mDismissDialog:Ljava/lang/Runnable;

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/popup/view/SimTrayDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->mPopupUIAlertDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    return-object p0
.end method
