.class public Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;
.super Landroid/widget/TextView;
.source "PanelCarrierLabelCommonView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private dynamicallyReduceTextSize()V
    .locals 10

    .line 99
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_0
    const/16 v4, 0xa0

    .line 105
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    const/16 v5, 0x708

    :goto_1
    move v6, v1

    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    .line 108
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    if-lt v5, v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    int-to-float v7, v6

    int-to-float v8, v4

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v7, v0, v7

    .line 112
    invoke-virtual {p0, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .line 95
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDumpText()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanelCarrierLabelCommonView"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->dynamicallyReduceTextSize()V

    const v0, -0x42000001    # -0.12499999f

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->dynamicallyReduceTextSize()V

    return-void
.end method

.method public setLabelSlot1Text(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLabelSlot2Text(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
