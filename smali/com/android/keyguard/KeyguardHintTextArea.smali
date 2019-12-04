.class public Lcom/android/keyguard/KeyguardHintTextArea;
.super Landroid/widget/RelativeLayout;
.source "KeyguardHintTextArea.java"


# instance fields
.field private mHintText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordHintText:Ljava/lang/String;

.field private mShowHintText:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 52
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method protected getPasswordHintText()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardHintTextArea()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardHintTextArea(Landroid/view/View;)V
    .locals 5

    .line 70
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xe9

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$rUeX5ZfuXnKlBfiJOl_xnMTYqeo;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$rUeX5ZfuXnKlBfiJOl_xnMTYqeo;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    .line 72
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 73
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 75
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const-string p0, "102"

    const-string p1, "1034"

    .line 76
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$KeyguardHintTextArea()V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$KeyguardHintTextArea(Landroid/view/View;)V
    .locals 5

    .line 79
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xe9

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$_XHOklXECLXNj4v5vNYugh6aHx4;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$_XHOklXECLXNj4v5vNYugh6aHx4;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    .line 81
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 82
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 83
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 61
    sget v0, Lcom/android/keyguard/R$id;->hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 62
    sget v0, Lcom/android/keyguard/R$id;->show_hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 63
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_hint_show:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$7BoO-0XDF5FIYeEzDpdHDc1wdNo;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$7BoO-0XDF5FIYeEzDpdHDc1wdNo;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$2boW6YkfqWG1hf7bU86WSZZHZz8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardHintTextArea$2boW6YkfqWG1hf7bU86WSZZHZz8;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateHintButton()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method protected updateHintTextSize()V
    .locals 4

    .line 95
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 97
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 99
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/keyguard/R$dimen;->kg_dex_message_area_font_size:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 98
    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 109
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 110
    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 112
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result p0

    mul-float/2addr v2, p0

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method
