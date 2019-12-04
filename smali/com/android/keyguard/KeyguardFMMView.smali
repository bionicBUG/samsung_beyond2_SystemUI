.class public Lcom/android/keyguard/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardFMMView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field private mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mIsVoiceCapacity:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOrientation:I

.field private mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field private mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mTitle:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 60
    iput p1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private setFMMInfo()V
    .locals 4

    .line 223
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v3, " "

    .line 227
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 236
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;-><init>(Lcom/android/keyguard/KeyguardFMMView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$LkOx4HaOTfU6URHkmOcnFtd4YG8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$LkOx4HaOTfU6URHkmOcnFtd4YG8;-><init>(Lcom/android/keyguard/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 258
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_1

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 261
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateDrawableTint()V
    .locals 7

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    .line 348
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 350
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->kg_fmm_drawable_tint_white_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_1

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->kg_fmm_drawable_tint:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 352
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateLayout()V
    .locals 7

    .line 361
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateWeight()V

    .line 362
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 368
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_fmm_message_area_margin_side:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 369
    iget v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_fmm_call_button_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 372
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 373
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 374
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 375
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 377
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_security_input_box_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 379
    :cond_1
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 380
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 381
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 382
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 383
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 384
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWeight()V
    .locals 6

    .line 392
    sget v0, Lcom/android/keyguard/R$id;->fmm_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 393
    sget v1, Lcom/android/keyguard/R$id;->fmm_phone:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 394
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 396
    iget p0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    .line 397
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 p0, 0x0

    .line 398
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 400
    :cond_0
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 401
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 403
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 204
    sget p0, Lcom/android/keyguard/R$id;->fmmEntry:I

    return p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 340
    sget p0, Lcom/android/keyguard/R$id;->keyguard_fmm_view:I

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 209
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p0, :cond_0

    .line 210
    sget p0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return p0

    .line 212
    :cond_0
    sget p0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardFMMView(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    .line 104
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setFMMInfo$1$KeyguardFMMView(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    const-string p2, "KeyguardFMMView"

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    .line 239
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 240
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click call button : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find the component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setFMMInfo$2$KeyguardFMMView(Landroid/view/View;)V
    .locals 2

    const-string p1, "KeyguardFMMView"

    .line 251
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click call button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find the component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$verifyPasswordAndUnlock$3$KeyguardFMMView(I[BZI)V
    .locals 2

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 292
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    const/4 p0, 0x0

    .line 293
    invoke-static {p2, p0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onAttachedToWindow()V

    const-string v0, "background"

    .line 130
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 166
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 169
    iput v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    .line 170
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 178
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onDetachedFromWindow()V

    .line 138
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    .line 80
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    .line 81
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    .line 82
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    .line 83
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 84
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 86
    iget v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 93
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onFinishInflate()V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    .line 100
    sget v0, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$RGfbKtAO-kpqunZjFnjF0LpcMgM;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$RGfbKtAO-kpqunZjFnjF0LpcMgM;-><init>(Lcom/android/keyguard/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateDrawableTint()V

    .line 111
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout()V

    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPatternChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KeyguardFMMView"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 302
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    .line 303
    new-instance p4, Landroid/content/Intent;

    const-string v1, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    .line 304
    invoke-virtual {p4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, p4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p4, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    .line 306
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecureLockState(I)V

    .line 311
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 312
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_1

    .line 314
    :cond_0
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p4, p3, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    if-eqz p4, :cond_3

    .line 319
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addFailedFMMUnlockAttempt(I)I

    .line 320
    iget-object p4, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result p4

    const/4 v2, 0x5

    if-eq p4, v2, :cond_2

    const/16 v2, 0x9

    if-le p4, v2, :cond_3

    .line 321
    :cond_2
    const-class p4, Lcom/android/systemui/KnoxStateMonitor;

    .line 322
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p4

    if-nez p4, :cond_3

    .line 324
    iget-object p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x7530

    invoke-virtual {p4, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 326
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_3
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-nez p1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p1, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 331
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p1}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :cond_4
    :goto_1
    xor-int/lit8 p1, p2, 0x1

    .line 334
    invoke-virtual {p0, p3, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPause()V

    .line 219
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 145
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p0, :cond_2

    .line 152
    sget p1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-interface {p0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10402de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected resetState()V
    .locals 4

    .line 183
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->resetState()V

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    .line 185
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz p0, :cond_2

    .line 191
    sget v0, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x10402de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->updateDrawableTint()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .line 267
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getPasswordText()[B

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    .line 270
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 271
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 275
    :cond_0
    array-length v3, v0

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    .line 278
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryInputEnabled(Z)V

    .line 279
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    .line 280
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$vSYpHMUaStOgGiRD1zixmV_xE-M;-><init>(Lcom/android/keyguard/KeyguardFMMView;I[B)V

    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;I[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
