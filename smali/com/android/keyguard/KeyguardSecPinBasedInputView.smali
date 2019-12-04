.class public abstract Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSecPinBasedInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field private mAttached:Z

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field protected mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsImagePinLock:Z

.field protected mIsNightModeOn:Z

.field private mIsPINContainerShowing:Z

.field private mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    .line 358
    new-instance p1, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 187
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initializeBottomContainerView(I)V
    .locals 5

    .line 493
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    .line 496
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    .line 497
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v2, :cond_2

    .line 501
    sget v2, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto :goto_1

    .line 503
    :cond_2
    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 506
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$hPpIZUWNF_Cc1lE76ecIYCqLbsE;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$hPpIZUWNF_Cc1lE76ecIYCqLbsE;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 524
    :cond_3
    sget v2, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    .line 525
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 526
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 528
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$OlVAR7X5t9AyLoWxFfp2gx_7KzE;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$OlVAR7X5t9AyLoWxFfp2gx_7KzE;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$1j1lXzwxljY00PZTsbQWwQAA680;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$1j1lXzwxljY00PZTsbQWwQAA680;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 550
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 551
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 555
    :cond_4
    sget v1, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    .line 556
    sget v1, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    .line 557
    sget v1, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    .line 558
    sget v1, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    .line 559
    sget v1, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    .line 560
    sget v1, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    .line 561
    sget v1, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    .line 562
    sget v1, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    .line 563
    sget v1, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    .line 564
    sget v1, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    if-nez v0, :cond_6

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_5

    goto :goto_2

    .line 570
    :cond_5
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->origin_ripple_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 571
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->origin_ripple_drawable:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_3

    .line 567
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->ripple_drawable_pin_whitebg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 568
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$drawable;->ripple_drawable_pin_whitebg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 573
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    :cond_8
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$_Gf5_CkuPCuVQrN9bTb4BBHLdSc;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$_Gf5_CkuPCuVQrN9bTb4BBHLdSc;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method private isRTL()Z
    .locals 1

    .line 664
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 5

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 329
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int p0, v1

    if-eqz p2, :cond_0

    .line 330
    instance-of v1, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    sub-int v1, v0, p0

    sub-int v2, p1, p0

    add-int/2addr v0, p0

    add-int/2addr p1, p0

    .line 331
    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 450
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    .line 440
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected getPasswordText()[B
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 166
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method protected getPasswordTextByString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 173
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 3

    .line 133
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    .line 137
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_VZW_INSTRUCTION:Z

    if-eqz p1, :cond_0

    .line 138
    sget p1, Lcom/android/keyguard/R$string;->kg_pin_sub_instructions_vzw:I

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    goto :goto_0

    .line 140
    :cond_0
    sget p1, Lcom/android/keyguard/R$string;->kg_pin_sub_instructions:I

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1

    .line 150
    :cond_3
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPromptReasonStringRes(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$initializeBottomContainerView$1$KeyguardSecPinBasedInputView(Landroid/view/View;)V
    .locals 1

    .line 510
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initializeBottomContainerView$2$KeyguardSecPinBasedInputView(Landroid/view/View;)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Lcom/android/keyguard/PasswordTextView;->deleteLastChar()V

    .line 533
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/keyguard/SecPasswordTextView;

    .line 534
    invoke-virtual {p1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initializeBottomContainerView$3$KeyguardSecPinBasedInputView(Landroid/view/View;)Z
    .locals 1

    .line 542
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    return v0
.end method

.method public synthetic lambda$initializeBottomContainerView$4$KeyguardSecPinBasedInputView(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "rapid_key_input"

    .line 577
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 579
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 580
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 581
    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 584
    new-instance v0, Lcom/android/keyguard/LiftToActivateListener;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 589
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 591
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 593
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardSecPinBasedInputView()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onUserInput()V

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardSecPinBasedInputView"

    const-string v1, "onApplyWindowInsets"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 293
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateCarrierTextPadding()V

    .line 295
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 376
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onAttachedToWindow()V

    .line 381
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DEAD_ZONE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    const-string v0, "background"

    .line 387
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    .line 389
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "rapid_key_input"

    .line 390
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 389
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 413
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 416
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    if-eq v0, p1, :cond_1

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "night mode changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPinBasedInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onNightModeChanged(Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 395
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onDetachedFromWindow()V

    .line 400
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    .line 406
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 408
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 431
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->verifyPasswordAndUnlock()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    sget v0, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    .line 215
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$y0BPLniyUGUwJMeIMtgI_-hEl1M;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$y0BPLniyUGUwJMeIMtgI_-hEl1M;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 225
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 226
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateCarrierTextPadding()V

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->initializeBottomContainerView(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 337
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 338
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 339
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 340
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 308
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 309
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    .line 310
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 311
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    .line 312
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "KeyguardSecPinBasedInputView"

    const-string p2, "The Ok button size is 0X0"

    .line 314
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget p1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 316
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onNightModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 300
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 616
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 617
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DEAD_ZONE:Z

    if-eqz p1, :cond_0

    .line 618
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged() Visibility : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecPinBasedInputView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 622
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "deadzone_v2"

    const-string v0, "3.33%,3.33%,0%"

    .line 624
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    return-void
.end method

.method protected resetState()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v1, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 110
    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnabledKeypad(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 671
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 672
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 673
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 674
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 675
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 676
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 678
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 679
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 680
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 682
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 683
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 684
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 686
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 687
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 688
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 690
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 691
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 692
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 694
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 695
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 696
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 698
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 699
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 700
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 702
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 703
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 704
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 706
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 707
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 708
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 710
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 711
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 712
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 714
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 715
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 716
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 718
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 719
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 720
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 722
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 723
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 724
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 726
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 727
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 728
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 730
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 731
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 732
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 734
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 735
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 736
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 738
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 739
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 740
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 742
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 743
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 744
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 746
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 747
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 748
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 750
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 751
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 752
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 754
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 755
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 756
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 347
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 349
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 351
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 353
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    .line 119
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    .line 120
    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 119
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected updateCarrierTextPadding()V
    .locals 5

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_6

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 238
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_carrier_label_text_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_6

    if-lez v0, :cond_2

    .line 245
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 246
    :goto_0
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v0

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v0, v2

    .line 249
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    .line 263
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isRTL()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->initializeBottomContainerView(I)V

    .line 465
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 466
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 467
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 468
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 469
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 470
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 471
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 472
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 473
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 474
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    .line 476
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageButton;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 478
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageButton;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageButton;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 483
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const-string p1, "background"

    .line 484
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    .line 485
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 486
    sget p1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box_whitebg:I

    goto :goto_1

    .line 487
    :cond_1
    sget p1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box:I

    .line 485
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method
