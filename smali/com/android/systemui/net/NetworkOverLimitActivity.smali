.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 151
    sget p0, Lcom/android/systemui/R$string;->data_usage_disabled_dialog_title:I

    return p0

    .line 145
    :cond_0
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_mobile_title_vzw:I

    goto :goto_0

    .line 146
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_mobile_title:I

    :goto_0
    return p0
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 1

    const-string p0, "netpolicy"

    .line 133
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 132
    invoke-static {p0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p0

    .line 135
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkOverLimitActivity"

    const-string v0, "problem snoozing network policy"

    .line 137
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$NetworkOverLimitActivity(Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$NetworkOverLimitActivity(Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$NetworkOverLimitActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$NetworkOverLimitActivity(Landroid/content/DialogInterface;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 65
    iput-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 69
    sget v1, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_body:I

    .line 70
    sget v2, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_enable:I

    .line 72
    new-instance v3, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$BabkV-4Kk4XbXe3BjpJJK8RmThs;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$BabkV-4Kk4XbXe3BjpJJK8RmThs;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    .line 75
    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 76
    sget v1, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_body_vzw:I

    const v2, 0x104000a

    .line 78
    sget v3, Lcom/android/systemui/R$string;->sec_data_usage_disabled_dialog_enable_vzw:I

    .line 80
    new-instance v4, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    move p1, v3

    move-object v3, v5

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1040000

    move-object v4, v5

    .line 83
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$QXlvvfkIssCZX6gL4yaZMriFmFo;

    invoke-direct {v0, p0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$QXlvvfkIssCZX6gL4yaZMriFmFo;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$v5W5kSMHHonhVuBCJL6ike6DrUY;

    invoke-direct {v0, p0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$v5W5kSMHHonhVuBCJL6ike6DrUY;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 111
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x3e99999a    # 0.3f

    .line 112
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v0, 0x50

    .line 113
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
