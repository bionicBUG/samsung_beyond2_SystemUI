.class public Lcom/android/keyguard/KeyguardSecPasswordView;
.super Lcom/android/keyguard/KeyguardPasswordView;
.source "KeyguardSecPasswordView.java"


# instance fields
.field private mBouncerShowing:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mIsIrisAuthenticated:Z

.field private mIsShownSIP:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 491
    new-instance p1, Lcom/android/keyguard/KeyguardSecPasswordView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 76
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPasswordView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPasswordView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsIrisAuthenticated:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsIrisAuthenticated:Z

    return p1
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 286
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private enableHidingPassword(Z)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "background"

    .line 384
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 387
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    .line 388
    sget v0, Lcom/android/keyguard/R$drawable;->lock_whitebg_password_hide_btn:I

    goto :goto_0

    .line 389
    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->lock_password_hide_btn:I

    .line 387
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$string;->kg_hide_password_accessibility:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 392
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 393
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    .line 394
    sget v0, Lcom/android/keyguard/R$drawable;->lock_whitebg_password_show_btn:I

    goto :goto_1

    .line 395
    :cond_3
    sget v0, Lcom/android/keyguard/R$drawable;->lock_password_show_btn:I

    .line 393
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$string;->kg_show_password_accessibility:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "KeyguardSecPasswordView"

    const-string p1, "enableHidingPassword() view is null"

    .line 380
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isExceptionalMessages()Z
    .locals 2

    .line 577
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getReversePortraitStringForTablet()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 2

    .line 571
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 6

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, "KeyguardSecPasswordView"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 528
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->showPromptReason(I)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isExceptionalMessages()Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 544
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_VZW_INSTRUCTION:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 545
    sget v0, Lcom/android/keyguard/R$string;->kg_password_sub_instructions_vzw:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    goto :goto_1

    .line 547
    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_password_sub_instructions:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    .line 554
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_7

    .line 555
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 556
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 557
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 560
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    sget v0, Lcom/android/keyguard/R$string;->kg_biometrics_has_confirmed:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected getPasswordText()[B
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 2

    .line 156
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 160
    sget p1, Lcom/android/keyguard/R$string;->kg_password_sub_instructions:I

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 172
    :cond_2
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->getPromptReasonStringRes(I)I

    move-result p0

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 412
    sget p0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .line 358
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 359
    sget p0, Lcom/android/keyguard/R$string;->kg_incorrect_password:I

    return p0

    .line 361
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWrongPasswordStringId()I

    move-result p0

    return p0
.end method

.method protected hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 8

    .line 305
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-le v1, v3, :cond_1

    return v3

    .line 314
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 317
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 318
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.samsung.android.honeyboard/.SamsungKeypad"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-le v5, v3, :cond_3

    move v5, v3

    .line 324
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 331
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sub-int/2addr v5, v4

    if-gtz v5, :cond_4

    if-eqz p2, :cond_0

    if-le v4, v3, :cond_0

    goto :goto_1

    :cond_8
    if-le v1, v3, :cond_9

    move v0, v3

    :cond_9
    return v0
.end method

.method public synthetic lambda$onFinishInflate$2$KeyguardSecPasswordView(Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 232
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHideKeyboardByDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 233
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KeyguardSecPasswordView"

    const-string v0, "Update iris preview caused due to click on password entry"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, -0x8

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-virtual {p1, v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleIrisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$KeyguardSecPasswordView(Landroid/view/View;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 248
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordView;->enableHidingPassword(Z)V

    .line 249
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 250
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 249
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setAccessibilitySelection(II)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$4$KeyguardSecPasswordView(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "show_keyboard_button"

    .line 255
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result p1

    if-nez p1, :cond_0

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onResume$0$KeyguardSecPasswordView()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public synthetic lambda$onResume$1$KeyguardSecPasswordView(I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHideKeyboardByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    if-eqz p1, :cond_1

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$yJ-Bal--AB3fqQBdDZ_h5m6Yhxs;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$yJ-Bal--AB3fqQBdDZ_h5m6Yhxs;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 82
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 84
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "show_keyboard_button"

    .line 85
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 84
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onDetachedFromWindow()V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 92
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 225
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V

    .line 227
    sget v0, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContainer:Landroid/view/ViewGroup;

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$4xEVkKS2GcF2k0sbNrlyh5YqtJc;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$4xEVkKS2GcF2k0sbNrlyh5YqtJc;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget v0, Lcom/android/keyguard/R$id;->password_show_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_hide_password_accessibility:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$ELEb9C_VNwrrEBEeiiFubZAmO1g;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$ELEb9C_VNwrrEBEeiiFubZAmO1g;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_0
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$-PQAV51LOu7RM6aYdRGFM6svtEs;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$-PQAV51LOu7RM6aYdRGFM6svtEs;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 419
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 427
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 p3, -0x1

    if-eq p1, p5, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    .line 430
    :goto_0
    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_2

    sget-boolean p4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p4, :cond_7

    .line 432
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    const p4, 0x10501f5

    if-eqz p1, :cond_4

    .line 433
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 435
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p1

    goto :goto_1

    .line 437
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 438
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    sub-int p1, v0, p1

    goto :goto_1

    .line 441
    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 445
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 446
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 447
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 448
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 449
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 453
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p5, p4

    .line 454
    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x1

    if-le p4, p5, :cond_5

    .line 455
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/keyguard/R$dimen;->kg_password_eca_margin_top:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move p1, p2

    move p4, v6

    goto :goto_2

    :cond_5
    move p4, p2

    :goto_2
    if-eqz v1, :cond_6

    .line 459
    iget-object p5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p5, :cond_6

    .line 460
    invoke-virtual {p5}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p5

    if-nez p5, :cond_6

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result p5

    invoke-static {p5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p5

    if-eqz p5, :cond_6

    sget-boolean p5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-nez p5, :cond_6

    .line 463
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/keyguard/R$dimen;->kg_password_eca_margin_top_land:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move p1, p2

    move p4, v6

    .line 468
    :cond_6
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p4, :cond_7

    .line 470
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    if-eq p1, p3, :cond_8

    .line 474
    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {p3, p2, p2, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 478
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p2

    :cond_9
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsShownSIP:Z

    .line 479
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_a

    .line 480
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsShownSIP:Z

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSIPShownState(Z)V

    .line 482
    :cond_a
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 483
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsShownSIP:Z

    if-nez p1, :cond_b

    .line 484
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 486
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->updateSwitchImeButton()V

    :cond_c
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    const-string v6, "password"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 405
    invoke-super/range {v1 .. v6}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 116
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->onResume(I)V

    .line 124
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardSecPasswordView"

    const-string v2, "<<<--->>> hide button"

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 139
    :cond_1
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->enableHidingPassword(Z)V

    return-void
.end method

.method protected resetState()V
    .locals 2

    .line 98
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 104
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryEnabled(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryEnabled(Z)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    :goto_1
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4

    .line 270
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 272
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateSwitchImeButton()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 191
    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsShownSIP:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/KeyguardSecPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 192
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_4

    if-eq v0, v3, :cond_4

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 206
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-nez v4, :cond_8

    .line 207
    :cond_6
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_switch_side_margin:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_show_password_side_margin:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 212
    :cond_7
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v3, :cond_9

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    .line 213
    :cond_9
    :goto_3
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_4
    if-eqz v1, :cond_a

    .line 218
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method
