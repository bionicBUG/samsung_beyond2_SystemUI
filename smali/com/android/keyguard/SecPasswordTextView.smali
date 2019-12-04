.class public Lcom/android/keyguard/SecPasswordTextView;
.super Lcom/android/keyguard/PasswordTextView;
.source "SecPasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/SecPasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x10

    .line 49
    iput p2, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    .line 70
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    sget p2, Lcom/android/systemui/R$string;->password_textview_font_family:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 3

    .line 158
    iget-object p0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "speak_password"

    const/4 v2, -0x3

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public append(C)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    iget v1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    if-lt v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p0}, Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;->append()V

    :cond_1
    return-void
.end method

.method protected getCharBounds()Landroid/graphics/Rect;
    .locals 4

    .line 80
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_pin_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 82
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method public getPasswordText()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 169
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIEditText;->onFinishInflate()V

    .line 173
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    aget-object v2, v2, v1

    .line 176
    instance-of v3, v2, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_0

    .line 177
    check-cast v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v2}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 148
    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reset(ZZ)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string p2, ""

    .line 115
    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/android/keyguard/SecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SecPasswordTextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 128
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_2
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    return-void
.end method

.method public setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/keyguard/SecPasswordTextView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    return-void
.end method
