.class public Lcom/android/systemui/popup/view/DataConnectionErrorDialog;
.super Ljava/lang/Object;
.source "DataConnectionErrorDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

.field private mPIntent:Landroid/app/PendingIntent;

.field private mRetry:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLandroid/app/PendingIntent;Lcom/android/systemui/popup/util/PopupUILogWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    .line 29
    iput-boolean p3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    .line 30
    iput-object p4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mPIntent:Landroid/app/PendingIntent;

    .line 31
    iput-object p5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    .line 32
    new-instance p1, Lcom/android/systemui/popup/data/DataConnectionErrorData;

    invoke-direct {p1, p5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;-><init>(Lcom/android/systemui/popup/util/PopupUILogWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    .line 33
    invoke-direct {p0, p6, p7}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->createDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createDialog(Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 6

    .line 62
    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getTitle(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getBody(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v2

    if-eq v2, p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButton(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 65
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v3

    if-eq v3, p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v5, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getNButton(IZ)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 67
    :goto_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 68
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->getPButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_4

    .line 73
    invoke-virtual {v3, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_4
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getPButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mData:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mType:I

    iget-boolean v3, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mRetry:Z

    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mPIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/-$$Lambda$DataConnectionErrorDialog$5nxE5Y1NHZmYAxUay389tgqou2w;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic lambda$getPButtonClickListener$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 86
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v1, "DataConnectionErrorDialog"

    const-string v2, "dismiss previous dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->dismiss()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v0, "DataConnectionErrorDialog"

    const-string v1, "BadTokenException occurs. The dialog show will be ignored."

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
