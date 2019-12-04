.class public Lcom/android/keyguard/KeyguardSecPINView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardSecPINView.java"


# instance fields
.field private final mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private mEcaButton:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 56
    new-instance p1, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    .line 57
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$vDRL714Y13kGm4aiXgM6rW9jXyk;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$vDRL714Y13kGm4aiXgM6rW9jXyk;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    .line 70
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method private isExceptionalMessages()Z
    .locals 2

    .line 279
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getReversePortraitStringForTablet()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
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

    .line 273
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

.method public static synthetic lambda$vDRL714Y13kGm4aiXgM6rW9jXyk(Lcom/android/keyguard/KeyguardSecPINView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->verifyNDigitsPIN()V

    return-void
.end method

.method private verifyNDigitsPIN()V
    .locals 3

    .line 237
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v2, v1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    .line 242
    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "KeyguardSecPINView"

    const-string/jumbo v2, "verifyPassword by N digits pin option"

    .line 243
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecPasswordTextView;->setMaxLength(I)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->afterTextChanged(Landroid/text/Editable;)V

    .line 233
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->verifyNDigitsPIN()V

    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, "KeyguardSecPINView"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_1

    .line 98
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

    .line 99
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->showPromptReason(I)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->isExceptionalMessages()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_VZW_INSTRUCTION:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 103
    sget v0, Lcom/android/keyguard/R$string;->kg_pin_sub_instructions_vzw:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    goto :goto_1

    .line 105
    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_pin_sub_instructions:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    .line 112
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_7

    .line 113
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 115
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    sget v0, Lcom/android/keyguard/R$string;->kg_biometrics_has_confirmed:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPasswordEntryEnabled(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 225
    sget p0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .line 175
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 176
    sget p0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return p0

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->getWrongPasswordStringId()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardSecPINView(Landroid/view/View;)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onAttachedToWindow()V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onDetachedFromWindow()V

    .line 216
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v0, :cond_0

    .line 217
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 132
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 134
    sget v0, Lcom/android/keyguard/R$id;->password_entry_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    .line 135
    sget v0, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    .line 136
    sget v0, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    .line 137
    sget v0, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    .line 139
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    .line 144
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key3:I

    .line 145
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key4:I

    .line 148
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key6:I

    .line 149
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key7:I

    .line 152
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key9:I

    .line 153
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->delete_button:I

    .line 156
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    .line 159
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mEcaButton:Landroid/view/View;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    .line 162
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 167
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$K9pkaL9kw7AL-MZ4PVtcIWunzg0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$K9pkaL9kw7AL-MZ4PVtcIWunzg0;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected resetState()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    .line 77
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPINView;->displayDefaultSecurityMessage()V

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 255
    :goto_0
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v1, :cond_1

    .line 256
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 6

    .line 184
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 185
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 186
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 187
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    aput-object p0, v4, v1

    .line 188
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x14d

    .line 189
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 190
    new-instance p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x0

    .line 191
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 192
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa7

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 199
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 200
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method
