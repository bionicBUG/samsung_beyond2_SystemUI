.class public Lcom/android/systemui/popup/util/PopupUIToastWrapper;
.super Ljava/lang/Object;
.source "PopupUIToastWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public makeToast(I)V
    .locals 1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 18
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
