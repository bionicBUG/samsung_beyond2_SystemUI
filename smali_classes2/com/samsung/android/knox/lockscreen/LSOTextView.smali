.class public Lcom/samsung/android/knox/lockscreen/LSOTextView;
.super Landroid/widget/TextView;
.source "LSOTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemText;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->init(Lcom/samsung/android/knox/lockscreen/LSOItemText;)V

    return-void
.end method


# virtual methods
.method public getTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText;)F
    .locals 1

    .line 90
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    return p0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->nativeVal:F

    .line 95
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOTextView$1;->$SwitchMap$com$samsung$android$knox$lockscreen$LSOItemText$LSOTextSize:[I

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSize()Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x40666666    # 3.6f

    goto :goto_0

    :cond_2
    const p0, 0x40266666    # 2.6f

    goto :goto_0

    :cond_3
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    const p0, 0x3ff70a3d    # 1.93f

    goto :goto_0

    :cond_5
    const p0, 0x3feccccd    # 1.85f

    :goto_0
    return p0
.end method

.method public init(Lcom/samsung/android/knox/lockscreen/LSOItemText;)V
    .locals 3

    const/16 v0, 0x80

    .line 53
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x100

    .line 57
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;->getTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x400

    .line 66
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    const/16 v0, 0x20

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    const/16 v0, 0x40

    .line 74
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p1

    const-string v0, "android:maxLines"

    .line 76
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 78
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    const-string v0, "android:singleLine"

    .line 81
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_5
    return-void
.end method
