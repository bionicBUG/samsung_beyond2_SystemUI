.class public Lcom/android/keyguard/KeyguardSecSimPukView;
.super Lcom/android/keyguard/KeyguardSimPukView;
.source "KeyguardSecSimPukView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;,
        Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;
    }
.end annotation


# instance fields
.field private mCarrierDialog:Landroid/app/AlertDialog;

.field private mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mIsEsimEnabled:Z

.field private mOrientation:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mSkip:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mOrientation:I

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSkip:Z

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mIsEsimEnabled:Z

    .line 80
    new-instance p1, Lcom/android/keyguard/KeyguardSecSimPukView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 146
    new-instance p1, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardSecSimPukView$SecStateMachine;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/keyguard/KeyguardSecSimPukView$1;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSimPukView;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSkip:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPukView;->showCarrierDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getSimPukRetry(I)I
    .locals 3

    const-string p0, "KeyguardSimPukView"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    .line 595
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 597
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimPukRetryForSubscriber(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimPukLockInfoResult(): num_of_retry is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSingleSim(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 665
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subscriptionInfos.size() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSimPukView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 666
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showCarrierDialog(Ljava/lang/String;)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 427
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    sget p1, Lcom/android/keyguard/R$string;->ok:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    .line 430
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 670
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 671
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 672
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 673
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material:I

    .line 671
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSimIconImage()V
    .locals 8

    .line 607
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 608
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ril.MSIMM"

    const-string v2, "0"

    .line 610
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 612
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 618
    :goto_0
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 619
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 622
    :cond_1
    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ESIM:Z

    const-string v6, "KeyguardSimPukView"

    if-eqz v5, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukView;->isSingleSim(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo p0, "single sim case in esim support"

    .line 623
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 627
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    instance-of v7, v5, Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v7, :cond_6

    .line 628
    check-cast v5, Lcom/android/systemui/widget/SystemUIImageView;

    .line 629
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v0, "this is esim"

    .line 630
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    const-string p0, "lock_ic_pin_attempt_sim"

    .line 632
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_whitebg"

    .line 633
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    return-void

    .line 637
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    const-string p0, "1"

    .line 639
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "lock_ic_pin_attempt_sim_02_whitebg"

    const-string v4, "lock_ic_pin_attempt_sim_02"

    if-eqz p0, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_4

    .line 640
    invoke-virtual {v5, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v5, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-string p0, "lock_ic_pin_attempt_sim_01"

    .line 644
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_01_whitebg"

    .line 645
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_5
    if-ne v2, v1, :cond_6

    .line 648
    invoke-virtual {v5, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v5, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkPin()Z
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 456
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method protected checkPuk()Z
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public confirmPin()Z
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    .line 469
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 471
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 272
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v2, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v3, p1, 0xa

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    .line 273
    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 276
    :cond_1
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz p2, :cond_2

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 277
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 280
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_6

    .line 284
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v2, :cond_4

    .line 285
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_remaining_attempts:I

    new-array p2, p2, [Ljava/lang/Object;

    rsub-int/lit8 v3, p1, 0xa

    .line 287
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    .line 285
    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 288
    :cond_4
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz p2, :cond_5

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 296
    :cond_6
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz p2, :cond_7

    .line 297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->card_crash:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 299
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 302
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSimPukView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 660
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    return p0
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method protected handleSubInfoChangeIfNeeded()V
    .locals 2

    .line 256
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 258
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardSecSimPukView(Landroid/view/View;)V
    .locals 1

    const-string p1, "KeyguardSimPukView"

    const-string/jumbo v0, "skip button pressed about esim"

    .line 332
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSkip:Z

    .line 334
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimSkipped(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 343
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->onAttachedToWindow()V

    const-string v0, "KeyguardSimPukView"

    const-string v1, "onAttachedToWindow"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "background"

    .line 346
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 373
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetState()V

    .line 377
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mOrientation:I

    .line 378
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 380
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 352
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->onDetachedFromWindow()V

    const-string v0, "KeyguardSimPukView"

    const-string v1, "onDetachedFromWindow"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 318
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V

    .line 320
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 321
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 322
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 323
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 330
    :cond_1
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->sim_skip_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$3gOFk5zTCTtKI1ZVOEfmSZV5_Zo;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$3gOFk5zTCTtKI1ZVOEfmSZV5_Zo;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    sget v0, Lcom/android/keyguard/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 338
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->updateProgressBarDrawable()V

    return-void
.end method

.method public resetState()V
    .locals 1

    .line 309
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->resetState()V

    .line 310
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->showDefaultMessage()V

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->updateSimIconImage()V

    :cond_0
    return-void
.end method

.method protected showDefaultMessage()V
    .locals 7

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDefaultMessage subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPukView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 543
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->getSimPukRetry(I)I

    move-result v0

    .line 544
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const-string v2, " "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/16 v4, 0xa

    if-eq v0, v4, :cond_5

    .line 570
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 573
    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v2, :cond_1

    .line 574
    sget v2, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 576
    :cond_1
    sget v2, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 562
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_4

    .line 564
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_sim_puk_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 550
    sget v0, Lcom/android/keyguard/R$string;->kg_dcm_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_7

    .line 552
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :cond_7
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_8

    .line 554
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_8
    sget v0, Lcom/android/keyguard/R$string;->kg_sim_puk_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_a

    .line 580
    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 584
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected updateSim()V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lcom/android/keyguard/KeyguardSecSimPukView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 529
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPukView;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    const-string v0, "KeyguardSimPukView"

    const-string/jumbo v1, "verifyPasswordAndUnlock next"

    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPukView;->verifyPasswordAndUnlock()V

    return-void
.end method
