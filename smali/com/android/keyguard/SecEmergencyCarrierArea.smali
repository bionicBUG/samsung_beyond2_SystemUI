.class public Lcom/android/keyguard/SecEmergencyCarrierArea;
.super Lcom/android/keyguard/EmergencyCarrierArea;
.source "SecEmergencyCarrierArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SecEmergencyCarrierArea$FooterMode;
    }
.end annotation


# instance fields
.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/EmergencyCarrierArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V

    .line 56
    sget v0, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 57
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 58
    sget v0, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p0}, Lcom/android/keyguard/SecEmergencyCarrierArea;->resizeFooter()V

    return-void
.end method

.method public resizeFooter()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v0, v1

    move v2, v0

    .line 76
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 80
    iget-object v3, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    if-eq v2, v0, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_4

    goto :goto_1

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 100
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    iget-object v2, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    .line 102
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 107
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    iget-object v3, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object p0, p0, Lcom/android/keyguard/SecEmergencyCarrierArea;->mForgotPatternButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    .line 93
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method
