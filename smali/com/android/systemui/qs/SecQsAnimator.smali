.class public Lcom/android/systemui/qs/SecQsAnimator;
.super Ljava/lang/Object;
.source "SecQsAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTopYDiff:I

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field private mBrightnessStartDelay:F

.field private mContext:Landroid/content/Context;

.field private final mHeader:Landroid/view/View;

.field private mHeaderClockView:Landroid/view/View;

.field private mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderDateView:Landroid/view/View;

.field private mHeaderMiscContainer:Landroid/view/View;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mMiscButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreContainer:Landroid/view/View;

.field private mMultiSimAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMultiSimBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

.field private mMumContainer:Landroid/view/View;

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mPagedIndicator:Landroid/view/View;

.field private mPagedIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPanelDateView:Landroid/view/View;

.field private mPanelMiscContainer:Landroid/view/View;

.field private mPowerContainer:Landroid/view/View;

.field private mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchContainer:Landroid/view/View;

.field private mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSecondRowEndDelay:F

.field private mSecondRowStartDelay:F

.field private mSettingContainer:Landroid/view/View;

.field private mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTileAnimatorBuilders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TouchAnimator$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mTileAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/TouchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTileLabelStartDelay:F

.field private mTileLayout:Landroid/view/View;

.field private mTileTempEndDelay:F

.field private mTileTempStartDelay:F

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopLastQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRowEndDelay:F

.field private mTopRowStartDelay:F

.field private mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimators:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    .line 725
    new-instance v0, Lcom/android/systemui/qs/SecQsAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsAnimator$1;-><init>(Lcom/android/systemui/qs/SecQsAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 743
    new-instance v0, Lcom/android/systemui/qs/SecQsAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsAnimator$2;-><init>(Lcom/android/systemui/qs/SecQsAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    .line 124
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 126
    iput-object p2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 127
    iput-object p3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 128
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    .line 130
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    .line 131
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    .line 136
    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 137
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "SecQsAnimator"

    const-string p2, "QS Not using page layout"

    .line 140
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderClockView:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateView:Landroid/view/View;

    .line 144
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget p2, Lcom/android/systemui/R$id;->qs_panel_date_clock_container:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->qs_misc_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderMiscContainer:Landroid/view/View;

    .line 146
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget p2, Lcom/android/systemui/R$id;->qs_panel_misc_container:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    .line 147
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget p2, Lcom/android/systemui/R$id;->page_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicator:Landroid/view/View;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMumContainer:Landroid/view/View;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->search_button_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchContainer:Landroid/view/View;

    .line 150
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->power_button_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerContainer:Landroid/view/View;

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingContainer:Landroid/view/View;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->more_button_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreContainer:Landroid/view/View;

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 156
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getQsTransitionAnimator()Lcom/android/systemui/qs/SecQsTransitionAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecQsAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderMiscContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecQsAnimator;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecQsAnimator;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    return p0
.end method

.method private clearAnimationState()V
    .locals 8

    .line 686
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 688
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    .line 689
    iget v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_a

    .line 691
    iget-object v6, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 692
    iget-object v7, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateView:Landroid/view/View;

    if-ne v6, v7, :cond_4

    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v5

    .line 693
    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    .line 694
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderClockView:Landroid/view/View;

    if-ne v6, v7, :cond_6

    if-eqz v3, :cond_5

    move v7, v2

    goto :goto_4

    :cond_5
    move v7, v5

    .line 695
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    .line 696
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    if-ne v6, v7, :cond_8

    if-eqz v3, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    move v7, v2

    .line 697
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    .line 698
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    if-eq v6, v7, :cond_9

    .line 701
    invoke-virtual {v6, v5}, Landroid/view/View;->setAlpha(F)V

    .line 703
    :cond_9
    :goto_6
    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 704
    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 706
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v4

    :goto_7
    if-ge v1, v0, :cond_b

    .line 708
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method private getEndDelay(Landroid/view/View;)F
    .locals 5

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getOnTopBarsHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 511
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 512
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    float-to-int v2, v2

    .line 513
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout;->getTileVerticalMargin()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 515
    iget-object v4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, p1, v4}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x1

    .line 516
    aget p0, v3, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p0, p0

    sub-float/2addr v1, v0

    sub-float/2addr p0, v1

    int-to-float v0, v2

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 538
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 539
    aput v1, p1, v0

    .line 540
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 544
    instance-of v0, p2, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 548
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 549
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 551
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getStartDelay(Landroid/view/View;IZ)F
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getOnTopBarsHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 497
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    .line 498
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 499
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p3}, Lcom/android/systemui/qs/PagedTileLayout;->getTileVerticalMargin()I

    move-result v1

    :goto_1
    sub-int/2addr v0, v1

    int-to-float p3, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 501
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x1

    .line 502
    aget p0, v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    sub-int/2addr p0, p2

    int-to-float p0, p0

    sub-float/2addr v2, p3

    sub-float/2addr p0, v2

    int-to-float p1, v3

    div-float/2addr p0, p1

    return p0
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    .line 534
    iget p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private updateMiscsVisibility()V
    .locals 4

    .line 671
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderMiscContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 676
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderMiscContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderMiscContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 648
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getExpandSettingsPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 654
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateMiscsVisibility()V

    return-void
.end method

.method public onAnimationAtStart()V
    .locals 5

    .line 635
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailExpandTriggeredAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 637
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 638
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicator:Landroid/view/View;

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getNumPages()I

    move-result v0

    if-le v0, v1, :cond_2

    move v4, v2

    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateMiscsVisibility()V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 661
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 667
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateMiscsVisibility()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 715
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 4

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 205
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p2, "sysui_qqs_count"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 181
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qqs_count"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 190
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 175
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 1

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    .line 166
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 167
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateMiscsVisibility()V

    return-void
.end method

.method public setPosition(F)V
    .locals 6

    .line 555
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 557
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 558
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 559
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 560
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 561
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void

    .line 564
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v1, :cond_5

    .line 565
    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailExpandTriggeredAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    .line 566
    :goto_3
    iput p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    if-eqz v2, :cond_8

    .line 567
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getExpandSettingsPanel()Z

    move-result v1

    if-nez v1, :cond_8

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/TouchAnimator;

    .line 573
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_4

    .line 575
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 576
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMiscButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 577
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz p1, :cond_7

    .line 578
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 580
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 581
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 582
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 583
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void

    .line 586
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v1, :cond_9

    .line 587
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 589
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 591
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_5

    .line 595
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 597
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/TouchAnimator;

    .line 599
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_6

    .line 601
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 602
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_b

    .line 603
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 605
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_c

    .line 606
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 608
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMiscButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 610
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz v1, :cond_d

    .line 611
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 613
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 614
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_e

    move v2, v5

    goto :goto_7

    :cond_e
    move v2, p1

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 615
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_f

    move p1, v5

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void
.end method

.method public updateAnimators()V
    .locals 37

    move-object/from16 v0, p0

    .line 219
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v1, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v1, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v2}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(FFFF)V

    .line 221
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 222
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 223
    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 224
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 225
    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 226
    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 228
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    if-nez v10, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [I

    new-array v13, v11, [I

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    .line 238
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 239
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v11, :cond_2

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 244
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/systemui/qs/bar/BarController;->getOnTopBarsHeight()I

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 245
    :goto_1
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v11

    int-to-float v3, v3

    .line 246
    iget-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v3

    float-to-int v3, v11

    .line 247
    iget-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v11}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v11

    .line 248
    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v15}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v15

    .line 249
    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v21, v9

    sget v9, Lcom/android/systemui/R$dimen;->qs_tile_anim_y_diff:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v14, :cond_4

    move v9, v2

    goto :goto_2

    .line 250
    :cond_4
    iget-object v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/android/systemui/R$dimen;->qs_second_tile_anim_y_diff:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 251
    :goto_2
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v22, v2

    sget v2, Lcom/android/systemui/R$dimen;->qs_bar_anim_y_diff:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 253
    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v14}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v14

    .line 255
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move/from16 v24, v2

    const/4 v2, 0x0

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    move-object/from16 v26, v10

    const-string/jumbo v10, "translationX"

    move-object/from16 v27, v8

    const-string v8, "alpha"

    move-object/from16 v28, v7

    const-string/jumbo v7, "translationY"

    if-eqz v25, :cond_15

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v29, v6

    move-object/from16 v6, v25

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile;

    move/from16 v25, v9

    mul-int v9, v11, v15

    move/from16 v30, v15

    .line 257
    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v15, v6}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v15

    if-nez v15, :cond_5

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tileView is null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SecQsAnimator"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v5

    move v5, v11

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v36, v14

    :goto_4
    move/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    goto/16 :goto_9

    :cond_5
    move/from16 v31, v9

    .line 263
    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v9

    move-object/from16 v32, v5

    .line 264
    sget v5, Lcom/android/systemui/R$id;->label_group:I

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-ge v2, v11, :cond_9

    move/from16 v33, v11

    .line 268
    iget-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v11, v6}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v6

    if-nez v6, :cond_6

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v36, v14

    move/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v9, v32

    move/from16 v5, v33

    goto/16 :goto_9

    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    .line 270
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 271
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v11

    invoke-direct {v0, v12, v11, v14}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 272
    invoke-direct {v0, v13, v9, v14}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v9, 0x0

    .line 273
    aget v11, v13, v9

    aget v31, v12, v9

    sub-int v11, v11, v31

    const/4 v9, 0x1

    .line 274
    aget v31, v13, v9

    aget v34, v12, v9

    sub-int v9, v31, v34

    .line 275
    iput v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBackgroundTopYDiff:I

    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    move-object/from16 v34, v13

    .line 277
    iget-boolean v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v13, :cond_8

    .line 281
    invoke-direct {v0, v15}, Lcom/android/systemui/qs/SecQsAnimator;->getEndDelay(Landroid/view/View;)F

    move-result v13

    iput v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    .line 282
    iget v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v13, v20, v13

    const/high16 v31, 0x40000000    # 2.0f

    div-float v13, v13, v31

    iput v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowStartDelay:F

    goto :goto_5

    :cond_7
    move-object/from16 v34, v13

    :cond_8
    :goto_5
    move-object/from16 v35, v12

    const/4 v13, 0x2

    new-array v12, v13, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v12, v17

    int-to-float v13, v11

    const/16 v18, 0x1

    aput v13, v12, v18

    .line 287
    invoke-virtual {v4, v6, v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v12

    move-object/from16 v36, v14

    const/4 v13, 0x2

    new-array v14, v13, [F

    aput v16, v14, v17

    int-to-float v13, v9

    aput v13, v14, v18

    .line 288
    invoke-virtual {v12, v6, v7, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [F

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v14, v17

    aput v16, v14, v18

    .line 289
    invoke-virtual {v12, v15, v10, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    new-array v11, v13, [F

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v11, v17

    aput v16, v11, v18

    .line 290
    invoke-virtual {v10, v15, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    .line 291
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v7, v13, [F

    .line 293
    fill-array-data v7, :array_0

    move-object/from16 v9, v32

    .line 294
    invoke-virtual {v9, v5, v8, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    .line 295
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 297
    iget-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v12, v22

    move/from16 v5, v33

    goto/16 :goto_e

    :cond_9
    move v5, v11

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v36, v14

    move-object/from16 v9, v32

    if-gt v5, v2, :cond_d

    .line 304
    iget v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    if-ge v2, v10, :cond_d

    move/from16 v11, v31

    if-ge v2, v11, :cond_c

    .line 305
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v10, v6}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v6

    if-nez v6, :cond_a

    goto/16 :goto_4

    :cond_a
    const/high16 v10, 0x3f800000    # 1.0f

    .line 307
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-ne v2, v5, :cond_b

    if-eqz v3, :cond_b

    .line 308
    iget-boolean v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v10, :cond_b

    move/from16 v12, v25

    const/4 v10, 0x0

    .line 309
    invoke-direct {v0, v15, v12, v10}, Lcom/android/systemui/qs/SecQsAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v11

    iput v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    .line 310
    invoke-direct {v0, v15}, Lcom/android/systemui/qs/SecQsAnimator;->getEndDelay(Landroid/view/View;)F

    move-result v11

    iput v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowEndDelay:F

    goto :goto_6

    :cond_b
    move/from16 v12, v25

    const/4 v10, 0x0

    :goto_6
    const/4 v11, 0x2

    new-array v13, v11, [F

    const/4 v14, 0x0

    aput v14, v13, v10

    .line 313
    iget v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBackgroundTopYDiff:I

    int-to-float v10, v10

    const/4 v14, 0x1

    aput v10, v13, v14

    move-object/from16 v14, v29

    .line 314
    invoke-virtual {v14, v6, v7, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 315
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v10, v11, [F

    .line 317
    fill-array-data v10, :array_1

    move-object/from16 v13, v28

    .line 318
    invoke-virtual {v13, v6, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 319
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    iget v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowStartDelay:F

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v11, v20, v11

    .line 320
    invoke-virtual {v10, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v10, 0x2

    new-array v11, v10, [F

    neg-int v10, v12

    int-to-float v10, v10

    const/16 v19, 0x0

    aput v10, v11, v19

    const/4 v10, 0x0

    const/16 v16, 0x1

    aput v10, v11, v16

    move-object/from16 v10, v27

    .line 323
    invoke-virtual {v10, v15, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    const/4 v11, 0x2

    new-array v10, v11, [F

    fill-array-data v10, :array_2

    .line 324
    invoke-virtual {v7, v15, v8, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    .line 325
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    iget v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    .line 326
    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 328
    iget-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v12

    goto :goto_8

    :cond_c
    move/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    goto :goto_7

    :cond_d
    move/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move/from16 v11, v31

    .line 332
    :goto_7
    invoke-direct {v0, v2}, Lcom/android/systemui/qs/SecQsAnimator;->isIconInAnimatedRow(I)Z

    move-result v10

    if-eqz v10, :cond_e

    if-ge v2, v11, :cond_e

    const/4 v10, 0x2

    new-array v6, v10, [F

    neg-int v11, v12

    int-to-float v11, v11

    const/16 v17, 0x0

    aput v11, v6, v17

    const/4 v11, 0x0

    const/16 v16, 0x1

    aput v11, v6, v16

    move-object/from16 v11, v21

    .line 334
    invoke-virtual {v11, v15, v7, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    new-array v7, v10, [F

    fill-array-data v7, :array_3

    .line 335
    invoke-virtual {v6, v15, v8, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    .line 336
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    iget v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    .line 337
    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move/from16 v25, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_8
    move/from16 v12, v22

    goto/16 :goto_e

    .line 342
    :cond_e
    iget v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    if-le v10, v11, :cond_10

    if-gt v5, v2, :cond_10

    if-ge v2, v10, :cond_10

    .line 343
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v10, v6}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v6

    if-nez v6, :cond_f

    :goto_9
    move v11, v5

    move-object v5, v9

    move v9, v12

    move-object v7, v13

    move-object v6, v14

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    :goto_a
    move/from16 v15, v30

    move-object/from16 v13, v34

    move-object/from16 v12, v35

    move-object/from16 v14, v36

    goto/16 :goto_3

    :cond_f
    move/from16 v25, v12

    const/4 v10, 0x2

    new-array v12, v10, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v12, v17

    .line 345
    iget v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBackgroundTopYDiff:I

    int-to-float v10, v10

    const/16 v18, 0x1

    aput v10, v12, v18

    .line 346
    invoke-virtual {v14, v6, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 347
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const/4 v10, 0x2

    new-array v12, v10, [F

    .line 349
    fill-array-data v12, :array_4

    .line 350
    invoke-virtual {v13, v6, v8, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    .line 351
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v10

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowStartDelay:F

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v12, v20, v12

    .line 352
    invoke-virtual {v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 354
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    move/from16 v25, v12

    .line 356
    :goto_b
    rem-int v6, v2, v5

    if-nez v6, :cond_11

    .line 357
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v13

    move/from16 v12, v22

    const/4 v10, 0x0

    .line 358
    invoke-direct {v0, v15, v12, v10}, Lcom/android/systemui/qs/SecQsAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v13

    iput v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileTempStartDelay:F

    .line 359
    invoke-direct {v0, v15}, Lcom/android/systemui/qs/SecQsAnimator;->getEndDelay(Landroid/view/View;)F

    move-result v10

    iput v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileTempEndDelay:F

    goto :goto_c

    :cond_11
    move-object/from16 v28, v13

    move/from16 v12, v22

    .line 362
    :goto_c
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v18, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-object/from16 v29, v14

    const/4 v13, 0x2

    new-array v14, v13, [F

    neg-int v13, v12

    int-to-float v13, v13

    const/16 v19, 0x0

    aput v13, v14, v19

    const/4 v13, 0x0

    aput v13, v14, v18

    .line 363
    invoke-virtual {v10, v15, v7, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    const/4 v10, 0x2

    new-array v13, v10, [F

    fill-array-data v13, :array_5

    .line 364
    invoke-virtual {v7, v15, v8, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    .line 365
    invoke-virtual {v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    iget v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileTempStartDelay:F

    .line 366
    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    add-int/lit8 v7, v5, -0x1

    if-eq v6, v7, :cond_12

    .line 368
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v2, v6, :cond_13

    goto :goto_d

    :cond_12
    const/4 v7, 0x1

    .line 369
    :goto_d
    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimators:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileAnimatorBuilders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v6, v11, -0x1

    if-ne v2, v6, :cond_14

    .line 373
    iget v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileTempStartDelay:F

    iput v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLabelStartDelay:F

    .line 378
    :cond_14
    :goto_e
    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v11, v5

    move-object v5, v9

    move/from16 v22, v12

    move/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    move-object/from16 v6, v29

    goto/16 :goto_a

    :cond_15
    move-object v9, v5

    move-object/from16 v29, v6

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object/from16 v36, v14

    move/from16 v12, v22

    move-object/from16 v2, v27

    .line 382
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    const/4 v6, 0x2

    new-array v11, v6, [F

    int-to-float v3, v3

    const/4 v13, 0x0

    aput v3, v11, v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    aput v14, v11, v15

    .line 383
    invoke-virtual {v1, v5, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    new-array v11, v6, [F

    aput v3, v11, v13

    aput v14, v11, v15

    .line 384
    invoke-virtual {v1, v5, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    new-array v11, v6, [F

    aput v3, v11, v13

    aput v14, v11, v15

    .line 385
    invoke-virtual {v1, v5, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 387
    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelMiscContainer:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v5, :cond_16

    .line 391
    invoke-virtual {v5}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    new-array v11, v6, [F

    const/4 v6, 0x0

    aput v3, v11, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    aput v3, v11, v6

    .line 392
    invoke-virtual {v1, v5, v7, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 393
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_16
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 397
    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 398
    invoke-virtual {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 399
    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsTranslationBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 400
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsAlphaBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 401
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    .line 402
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 403
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    int-to-float v5, v12

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 404
    invoke-virtual {v1, v2, v7, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    new-array v4, v3, [F

    fill-array-data v4, :array_6

    .line 405
    invoke-virtual {v1, v2, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 406
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 408
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderClockView:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_7

    .line 411
    invoke-virtual {v1, v2, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateView:Landroid/view/View;

    new-array v4, v3, [F

    fill-array-data v4, :array_8

    .line 412
    invoke-virtual {v1, v2, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowStartDelay:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 413
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 415
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_9

    .line 418
    invoke-virtual {v1, v2, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 421
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelDateView:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/qs/SecQsAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v1

    .line 424
    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicator:Landroid/view/View;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_a

    .line 425
    invoke-virtual {v3, v4, v8, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    .line 426
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicatorAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 428
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedIndicator:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarController;->getBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 431
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarItemImpl;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_17

    .line 432
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v3

    move/from16 v6, v24

    .line 433
    invoke-direct {v0, v3, v6, v5}, Lcom/android/systemui/qs/SecQsAnimator;->getStartDelay(Landroid/view/View;IZ)F

    move-result v6

    iput v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessStartDelay:F

    .line 434
    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v6, 0x2

    new-array v9, v6, [F

    fill-array-data v9, :array_b

    .line 435
    invoke-virtual {v5, v3, v8, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessStartDelay:F

    .line 436
    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 438
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v5}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 440
    :cond_17
    iput-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 443
    :goto_f
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarController;->getMultiSimBar()Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    .line 444
    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v3, :cond_18

    .line 446
    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$id;->multi_sim_bar_root:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 447
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_c

    .line 448
    invoke-virtual {v4, v3, v8, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    .line 449
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 451
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 453
    :cond_18
    iput-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiSimAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 455
    :goto_10
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingContainer:Landroid/view/View;

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v3, v1, v4}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 456
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget v5, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v5, v34

    invoke-direct {v0, v5, v1, v4}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 457
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->sec_qs_footer_button_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$dimen;->sec_qs_footer_button_margin_start:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 459
    iget-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    const/4 v4, 0x1

    goto :goto_11

    :cond_19
    const/4 v4, 0x0

    :goto_11
    const/4 v6, 0x0

    .line 460
    aget v9, v5, v6

    aget v11, v3, v6

    sub-int/2addr v9, v11

    add-int/2addr v9, v1

    if-eqz v4, :cond_1a

    const/4 v1, -0x1

    goto :goto_12

    :cond_1a
    const/4 v1, 0x1

    :goto_12
    mul-int/2addr v9, v1

    const/4 v1, 0x1

    .line 461
    aget v4, v5, v1

    aget v3, v3, v1

    sub-int/2addr v4, v3

    .line 462
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMumContainer:Landroid/view/View;

    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 463
    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz v5, :cond_1b

    mul-int/lit8 v5, v9, 0x2

    int-to-float v5, v5

    goto :goto_13

    :cond_1b
    int-to-float v5, v9

    :goto_13
    const/4 v11, 0x0

    aput v5, v6, v11

    const/4 v5, 0x1

    const/16 v16, 0x0

    aput v16, v6, v5

    invoke-virtual {v1, v3, v10, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMumContainer:Landroid/view/View;

    const/4 v6, 0x2

    new-array v12, v6, [F

    aput v16, v12, v11

    int-to-float v4, v4

    aput v4, v12, v5

    .line 464
    invoke-virtual {v1, v3, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchContainer:Landroid/view/View;

    new-array v12, v6, [F

    int-to-float v9, v9

    aput v9, v12, v11

    aput v16, v12, v5

    .line 465
    invoke-virtual {v1, v3, v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchContainer:Landroid/view/View;

    new-array v12, v6, [F

    aput v16, v12, v11

    aput v4, v12, v5

    .line 466
    invoke-virtual {v1, v3, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerContainer:Landroid/view/View;

    new-array v12, v6, [F

    .line 467
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v13

    if-eqz v13, :cond_1c

    move/from16 v13, v16

    goto :goto_14

    :cond_1c
    move v13, v9

    :goto_14
    aput v13, v12, v11

    aput v16, v12, v5

    invoke-virtual {v1, v3, v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerContainer:Landroid/view/View;

    new-array v12, v6, [F

    aput v16, v12, v11

    aput v4, v12, v5

    .line 468
    invoke-virtual {v1, v3, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingContainer:Landroid/view/View;

    new-array v12, v6, [F

    .line 469
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v13

    if-eqz v13, :cond_1d

    move/from16 v13, v16

    goto :goto_15

    :cond_1d
    move v13, v9

    :goto_15
    aput v13, v12, v11

    aput v16, v12, v5

    invoke-virtual {v1, v3, v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingContainer:Landroid/view/View;

    new-array v12, v6, [F

    aput v16, v12, v11

    aput v4, v12, v5

    .line 470
    invoke-virtual {v1, v3, v7, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreContainer:Landroid/view/View;

    new-array v12, v6, [F

    aput v9, v12, v11

    aput v16, v12, v5

    .line 471
    invoke-virtual {v1, v3, v10, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreContainer:Landroid/view/View;

    new-array v9, v6, [F

    aput v16, v9, v11

    aput v4, v9, v5

    .line 472
    invoke-virtual {v1, v3, v7, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMiscButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 475
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_BUTTON:Z

    if-eqz v1, :cond_1e

    .line 476
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchContainer:Landroid/view/View;

    new-array v4, v6, [F

    fill-array-data v4, :array_d

    .line 477
    invoke-virtual {v1, v3, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 478
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 481
    :cond_1e
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreContainer:Landroid/view/View;

    new-array v4, v6, [F

    fill-array-data v4, :array_e

    .line 482
    invoke-virtual {v1, v3, v8, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 483
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 485
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMumContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
