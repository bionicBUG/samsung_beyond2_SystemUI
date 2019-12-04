.class public Lcom/android/systemui/popup/view/MWOverheatWarningDialog;
.super Ljava/lang/Object;
.source "MWOverheatWarningDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/popup/data/MWOverheatWarningData;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUILogWrapper;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 21
    new-instance p1, Lcom/android/systemui/popup/data/MWOverheatWarningData;

    invoke-direct {p1, p2}, Lcom/android/systemui/popup/data/MWOverheatWarningData;-><init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mData:Lcom/android/systemui/popup/data/MWOverheatWarningData;

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mData:Lcom/android/systemui/popup/data/MWOverheatWarningData;

    invoke-virtual {v1}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mData:Lcom/android/systemui/popup/data/MWOverheatWarningData;

    invoke-virtual {v2}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getBody()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mData:Lcom/android/systemui/popup/data/MWOverheatWarningData;

    invoke-virtual {v3}, Lcom/android/systemui/popup/data/MWOverheatWarningData;->getPButton()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 57
    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 61
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->dismiss()V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/MWOverheatWarningDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v0, "MWOverheatWarningDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
