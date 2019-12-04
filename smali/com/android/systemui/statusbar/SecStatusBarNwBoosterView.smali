.class public Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;
.super Landroid/widget/FrameLayout;
.source "SecStatusBarNwBoosterView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mActivity:Landroid/widget/ImageView;

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mMobileType:Landroid/widget/ImageView;

.field private mNwBoosterCombo:Landroid/view/ViewGroup;

.field private mNwBoosterDisabledAlpha:F

.field private mNwBoosterGroup:Landroid/widget/LinearLayout;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

.field private mVisibleState:I

.field private mWifiStrength:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;
    .locals 2

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 70
    sget v0, Lcom/android/systemui/R$layout;->sec_status_bar_nw_booster_group:I

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->setSlot(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->init()V

    const/4 p1, 0x0

    .line 75
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->nwbooster_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    .line 110
    sget v0, Lcom/android/systemui/R$id;->nwbooster_combo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterCombo:Landroid/view/ViewGroup;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->wifi_strength:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/android/systemui/R$id;->activity:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    .line 114
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 115
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_nwbooster_icon_disabled_state_alpha:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 130
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 131
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 132
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 138
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 139
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    if-eqz v0, :cond_1

    .line 170
    iget-object v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-eqz v0, :cond_4

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-nez v4, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 179
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-eqz v0, :cond_7

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_5

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 196
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 198
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->wifiStrengthId:I

    if-eq v0, v4, :cond_3

    if-eqz v4, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-ne v4, v5, :cond_4

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-eq v0, v4, :cond_7

    .line 217
    :cond_4
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileTypeId:I

    if-eqz v0, :cond_6

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->mobileDataVisible:Z

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 224
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    iget v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-ne v4, v5, :cond_8

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eq v0, v4, :cond_b

    .line 232
    :cond_8
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->activityId:I

    if-eqz v0, :cond_a

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->running:Z

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterDisabledAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 239
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    :cond_b
    :goto_5
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void
.end method


# virtual methods
.method public applyNwBoosterState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 145
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initViewState()V

    return-void

    .line 156
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;)V

    :cond_2
    return-void
.end method

.method public forceUpdateState()V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceUpdateState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecStatusBarNwBoosterView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->initViewState()V

    :cond_0
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    .line 101
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 102
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 103
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 104
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 329
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 324
    iget p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 262
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 263
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 264
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 265
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 266
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2

    .line 281
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mWifiStrength:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 2

    .line 301
    iget p2, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 305
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mVisibleState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    .line 317
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mNwBoosterGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecStatusBarNwBoosterView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarNwBoosterView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$NwBoosterIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
