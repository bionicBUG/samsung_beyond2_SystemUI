.class public Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;
.super Landroid/widget/LinearLayout;
.source "PanelCarrierLabelZVVView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelViewBase;


# instance fields
.field private mCommonView:Landroid/widget/TextView;

.field private mLayoutCarrierLabelZVV:Landroid/widget/LinearLayout;

.field private mSlot1View:Landroid/widget/TextView;

.field private mSlot2View:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\n"

    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p0, v0, :cond_2

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 117
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, -0x1

    .line 122
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 126
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p0, 0x2

    .line 127
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLines(I)V

    .line 132
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateFontSize()V
    .locals 4

    .line 148
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_text_size_zvv:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .line 108
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->notification_panel_carrier_label_height_zvv:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDumpText()Ljava/lang/String;
    .locals 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanelCarrierLabelZVVView"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    const-string v2, ":"

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 65
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_multi_sim:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mLayoutCarrierLabelZVV:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_slot1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_slot2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/android/systemui/R$id;->panel_carrier_label_text_common:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    const v1, -0x42000001    # -0.12499999f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->updateFontSize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->updateFontSize()V

    return-void
.end method

.method public setLabelSlot1Text(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mLayoutCarrierLabelZVV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelSlot2Text(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mLayoutCarrierLabelZVV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot1View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mSlot2View:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mLayoutCarrierLabelZVV:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setSlotViewStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->mCommonView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelZVVView;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
