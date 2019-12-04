.class public Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;
.super Landroid/widget/FrameLayout;
.source "SecStatusBarMPTCPView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mActivity:Landroid/widget/ImageView;

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private mGigaMode:Landroid/widget/ImageView;

.field private mMPTCPCombo:Landroid/view/ViewGroup;

.field private mMPTCPGroup:Landroid/widget/LinearLayout;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

.field private mType:Landroid/widget/ImageView;

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 64
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;
    .locals 2

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 69
    sget v0, Lcom/android/systemui/R$layout;->sec_status_bar_mptcp_group:I

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->setSlot(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->init()V

    const/4 p1, 0x0

    .line 74
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 107
    new-instance v0, Lcom/android/systemui/DualToneHandler;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    .line 108
    sget v0, Lcom/android/systemui/R$id;->mptcp_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    .line 109
    sget v0, Lcom/android/systemui/R$id;->mptcp_combo:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPCombo:Landroid/view/ViewGroup;

    .line 110
    sget v0, Lcom/android/systemui/R$id;->mptcp_type:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/android/systemui/R$id;->giga_mode:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/android/systemui/R$id;->activity:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    .line 113
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 114
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .locals 4

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 127
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 129
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 135
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 136
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->typeId:I

    if-eqz v0, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->gigaModeId:I

    if-eqz v0, :cond_2

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->activityId:I

    if-eqz v0, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 183
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->typeId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->typeId:I

    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->gigaModeId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->gigaModeId:I

    if-eq v0, v1, :cond_5

    if-eqz v1, :cond_4

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->activityId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->activityId:I

    if-eq v0, v1, :cond_7

    if-eqz v1, :cond_6

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 215
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-void
.end method


# virtual methods
.method public applyMPTCPState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->initViewState()V

    return-void

    .line 153
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;)V

    :cond_2
    return-void
.end method

.method public forceUpdateState()V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceUpdateState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecStatusBarMPTCPView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->initViewState()V

    :cond_0
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    .line 100
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 102
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 103
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    .line 299
    iget p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;->visible:Z

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

    .line 236
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 238
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    iget-object p2, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2

    .line 255
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mGigaMode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 2

    .line 275
    iget p2, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 279
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mVisibleState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    .line 291
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mMPTCPGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecStatusBarMPTCPView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/SecStatusBarMPTCPView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MPTCPIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
