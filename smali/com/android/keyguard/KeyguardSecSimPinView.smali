.class public Lcom/android/keyguard/KeyguardSecSimPinView;
.super Lcom/android/keyguard/KeyguardSimPinView;
.source "KeyguardSecSimPinView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;
    }
.end annotation


# instance fields
.field private mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mIsEsimEnabled:Z

.field private mOrientation:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemainingAttempts:I

.field private mResult:I

.field private mShowDefaultMessage:Z

.field private mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mSkip:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mShowDefaultMessage:Z

    const/4 p2, -0x1

    .line 68
    iput p2, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mRemainingAttempts:I

    .line 69
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mResult:I

    .line 72
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mOrientation:I

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSkip:Z

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mIsEsimEnabled:Z

    .line 80
    new-instance p1, Lcom/android/keyguard/KeyguardSecSimPinView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSimPinView;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSkip:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSecSimPinView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSecSimPinView;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mResult:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardSecSimPinView;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getSimPinRetry(I)I
    .locals 3

    const-string p0, "KeyguardSecSimPinView"

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "phone"

    .line 505
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetryForSubscriber(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimPinLockInfoResult(): num_of_retry is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 2

    .line 177
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 179
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mRemainingAttempts:I

    :cond_0
    return-void
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

    .line 573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subscriptionInfos.size() = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardSecSimPinView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 574
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 578
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 580
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 581
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_progress_material:I

    .line 579
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSimIconImage()V
    .locals 8

    .line 517
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 518
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ril.MSIMM"

    const-string v2, "0"

    .line 520
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 525
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 527
    :goto_0
    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 528
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 531
    :cond_1
    sget-boolean v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ESIM:Z

    const-string v6, "KeyguardSecSimPinView"

    if-eqz v5, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPinView;->isSingleSim(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo p0, "single sim case in esim support"

    .line 532
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 536
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    instance-of v7, v5, Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v7, :cond_6

    .line 537
    check-cast v5, Lcom/android/systemui/widget/SystemUIImageView;

    .line 538
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isESIM(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v0, "this is esim"

    .line 539
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    const-string p0, "lock_ic_pin_attempt_sim"

    .line 541
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_whitebg"

    .line 542
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    return-void

    .line 546
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    const-string p0, "1"

    .line 548
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "lock_ic_pin_attempt_sim_02_whitebg"

    const-string v4, "lock_ic_pin_attempt_sim_02"

    if-eqz p0, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_4

    .line 549
    invoke-virtual {v5, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v5, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-string p0, "lock_ic_pin_attempt_sim_01"

    .line 553
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    const-string p0, "lock_ic_pin_attempt_sim_01_whitebg"

    .line 554
    invoke-virtual {v5, p0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_5
    if-ne v2, v1, :cond_6

    .line 557
    invoke-virtual {v5, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v5, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_6
    :goto_1
    return-void
.end method

.method private verifyPasswordAndUnlock(Ljava/lang/String;)V
    .locals 7

    .line 334
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 336
    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 337
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    .line 338
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ge v0, v3, :cond_4

    .line 343
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 350
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_3

    .line 351
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_3
    return-void

    .line 355
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setEnabledKeypad(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v0, :cond_5

    .line 361
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 362
    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinView$2;

    invoke-direct {v1, p0, p1, v0, v0}, Lcom/android/keyguard/KeyguardSecSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 443
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 196
    :cond_1
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->card_crash:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 203
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSecSimPinView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 568
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10404c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardSecSimPinView(Landroid/view/View;)V
    .locals 1

    const-string p1, "KeyguardSecSimPinView"

    const-string/jumbo v0, "skip button pressed about esim"

    .line 225
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSkip:Z

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimSkipped(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 236
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    .line 239
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-string v0, "background"

    .line 242
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 272
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetState()V

    .line 276
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mOrientation:I

    .line 277
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    .line 251
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->getUpdateMonitorCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 254
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 210
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->onFinishInflate()V

    .line 212
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    .line 213
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 215
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 216
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 223
    :cond_1
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->sim_skip_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimSkipButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$fg_rAZJT1750yccsGPiJNeQm5W0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$fg_rAZJT1750yccsGPiJNeQm5W0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget v0, Lcom/android/keyguard/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->updateProgressBarDrawable()V

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    const-string v0, "KeyguardSecSimPinView"

    const-string v1, "Resetting state"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->handleSubInfoChangeIfNeeded()V

    .line 160
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isUnlockSimOnBootState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->showDefaultMessage()V

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->updateSimIconImage()V

    :cond_1
    return-void
.end method

.method protected showDefaultMessage()V
    .locals 7

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDefaultMessage subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->getSimPinRetry(I)I

    move-result v0

    .line 458
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const-string v2, ". "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    .line 483
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 486
    :cond_0
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v4, :cond_1

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/android/keyguard/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 490
    :cond_1
    sget v2, Lcom/android/keyguard/R$string;->kg_unlock_sim_pin_remaining_attempts:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/keyguard/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_pin_remaining_1_attempt:I

    .line 477
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_unlock_sim_pin_remaining_1_attempt:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_6

    .line 464
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_7

    .line 466
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_7
    sget v0, Lcom/android/keyguard/R$string;->kg_unlock_sim_pin_instructions:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p0, :cond_9

    .line 494
    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 498
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDefaultMessage isValidSubscriptionId failed !!!  subid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinView;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v1, :cond_0

    return-void

    .line 326
    :cond_0
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V

    return-void
.end method
