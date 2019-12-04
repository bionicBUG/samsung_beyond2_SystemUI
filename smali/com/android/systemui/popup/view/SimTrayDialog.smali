.class public Lcom/android/systemui/popup/view/SimTrayDialog;
.super Ljava/lang/Object;
.source "SimTrayDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/popup/util/DisplayManagerWrapper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    .line 33
    iput p2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mType:I

    .line 34
    new-instance p1, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    iget-object p2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    invoke-direct {p1, p2}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;-><init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V

    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mShowRunnable:Ljava/lang/Runnable;

    .line 36
    iput-object p5, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    invoke-virtual {v1}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getTitleMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    iget v3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mType:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyMessage(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mData:Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;

    invoke-virtual {v3}, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->getBodyImage()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 63
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 64
    sget v5, Lcom/android/systemui/R$layout;->sim_card_tray_water_protection_dialog:I

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    sget v5, Lcom/android/systemui/R$id;->sim_card_tray_water_protection_dialog_body_image:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 70
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 72
    sget v2, Lcom/android/systemui/R$id;->sim_card_tray_water_protection_dialog_body_message:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v1, v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->yes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v0, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$iFFD_7PzqssFHhby41tPmgCupBM;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$iFFD_7PzqssFHhby41tPmgCupBM;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 84
    new-instance v1, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$sMZHNywKSJe7bgLPU9qjF-AzWTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$sMZHNywKSJe7bgLPU9qjF-AzWTQ;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 91
    new-instance v1, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$r8UnYEKYac-i_-YkqmaVO6FkcMI;

    invoke-direct {v1, p0}, Lcom/android/systemui/popup/view/-$$Lambda$SimTrayDialog$r8UnYEKYac-i_-YkqmaVO6FkcMI;-><init>(Lcom/android/systemui/popup/view/SimTrayDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$createDialog$0$SimTrayDialog(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$createDialog$1$SimTrayDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$createDialog$2$SimTrayDialog(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/SimTrayDialog;->dismiss()V

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/popup/view/SimTrayDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/popup/view/SimTrayDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
