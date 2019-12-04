.class public Lcom/android/systemui/appdock/view/ContrastTextView;
.super Landroid/widget/TextView;
.source "ContrastTextView.java"


# instance fields
.field private final SEARCH_RESULT_HIGHLIGHT_TEXT_LIMIT:I

.field private mContrastWord:Ljava/lang/CharSequence;

.field private mContrastWordColor:I

.field private mDirtyContrast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc8

    .line 18
    iput p1, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->SEARCH_RESULT_HIGHLIGHT_TEXT_LIMIT:I

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xc8

    .line 18
    iput v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->SEARCH_RESULT_HIGHLIGHT_TEXT_LIMIT:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/ContrastTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xc8

    .line 18
    iput p3, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->SEARCH_RESULT_HIGHLIGHT_TEXT_LIMIT:I

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/ContrastTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWordColor:I

    return-void
.end method

.method private isDirtyKeyword()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWordColor:I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWord:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onContrastChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/ContrastTextView;->isDirtyKeyword()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 52
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 53
    invoke-interface {v2, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/ContrastTextView;->updateSearchKeywordColorSpan()V

    .line 60
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mDirtyContrast:Z

    return-void
.end method

.method public setContrastWord(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWord:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/ContrastTextView;->onContrastChanged()V

    return-void
.end method

.method protected updateSearchKeywordColorSpan()V
    .locals 9

    .line 85
    iget-object v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWord:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWordColor:I

    if-eqz v0, :cond_6

    .line 86
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v5

    if-eqz v5, :cond_2

    .line 97
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 103
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 110
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    if-gez v5, :cond_4

    goto :goto_0

    .line 115
    :cond_4
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/android/systemui/appdock/view/ContrastTextView;->mContrastWordColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v5, v4

    add-int/2addr v4, v6

    const/16 v8, 0x21

    invoke-virtual {v0, v7, v5, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_1

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
