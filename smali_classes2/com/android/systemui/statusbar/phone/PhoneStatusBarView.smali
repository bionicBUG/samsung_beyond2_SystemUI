.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mBarAlpha:F

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBattery:Lcom/android/systemui/BatteryMeterView;

.field private mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

.field private mCarrierInformationContainer:Landroid/view/ViewGroup;

.field private mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

.field private mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

.field private mCenterIconSpace:Landroid/view/View;

.field private mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mCurrentBgColor:I

.field private mCutoutSideNudge:I

.field private mCutoutSpace:Landroid/view/View;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field private mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

.field private mHideExpandedRunnable:Ljava/lang/Runnable;

.field mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

.field private mIndicatorGardenLayoutBugDetector:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

.field private mIndicatorGardenViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

.field mIsFullyOpenedPanel:Z

.field private mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

.field private mMinFraction:F

.field private mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

.field private mNotiIconWidth:I

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBarAreaView:Landroid/view/ViewGroup;

.field private mStatusBarContents:Landroid/view/ViewGroup;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusIconContainer:Landroid/view/ViewGroup;

.field protected mTwoPhoneModeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 109
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 118
    new-instance p2, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    .line 119
    new-instance p2, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    .line 126
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 127
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 627
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-direct {p2, p0, v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 798
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    .line 131
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 132
    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 135
    new-instance p2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    .line 137
    sget-boolean p1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz p1, :cond_0

    .line 138
    new-instance p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateGardenOnLayoutByCover(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/ViewGroup;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 528
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 529
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 531
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    .line 532
    invoke-static {p0, v2, p1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 534
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-gtz p0, :cond_1

    .line 535
    new-instance p0, Landroid/util/Pair;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 537
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-lt p0, v3, :cond_2

    .line 538
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method static synthetic lambda$setBar$1()V
    .locals 1

    .line 153
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateStatusBarIcons()V

    .line 154
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateStatusBarText()V

    return-void
.end method

.method private updateGardenOnLayoutByCover(I)V
    .locals 1

    .line 604
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onChangedCoverDefaultSidePadding(Lcom/android/systemui/statusbar/phone/IndicatorGarden;I)V

    return-void
.end method

.method private updateScrimFraction()V
    .locals 4

    .line 422
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 423
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/4 v1, 0x0

    .line 424
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 429
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setPanelExpansion(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 743
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printChildWidth(Ljava/io/PrintWriter;)V

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenLayoutBugDetector:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    if-eqz p1, :cond_1

    .line 747
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->dumpBugViews(Ljava/io/PrintWriter;)V

    .line 749
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    if-eqz p1, :cond_2

    .line 750
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getDumpString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string p1, " Rune.STATBAR_INDICATOR_MARQUEE:true"

    .line 752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Rune.KEYGUARD_SUPPORT_COVER   :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Current Background Color            : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentBgColor:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Current Alpha of PhoneStatusBarView : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDisplayCutout ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public getCarrierInformationContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 768
    sget v0, Lcom/android/systemui/R$id;->home_carrier_information_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    .line 770
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInformationContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getCarrierInformationContext()Landroid/content/Context;
    .locals 0

    .line 774
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 684
    sget v0, Lcom/android/systemui/R$id;->status_bar_center_side:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 686
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenCenterContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEssentialLeftWidth()I
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 716
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 717
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotiIconWidth:I

    int-to-float p0, p0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getEssentialRightWidth()I
    .locals 5

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    .line 724
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 727
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v3, :cond_2

    const-class v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    .line 732
    :goto_2
    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v4, :cond_3

    .line 733
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 734
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    :cond_3
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    return v0
.end method

.method public getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 668
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 675
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 677
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 781
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    .line 783
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierInfoNeedToBeGoneContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    .line 693
    sget v0, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardenRightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 702
    sget v0, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTwoPhoneIcon()Landroid/widget/ImageView;
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTwoPhoneIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public synthetic lambda$setBar$0$PhoneStatusBarView()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBgColor(I)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 270
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 199
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 202
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    .line 204
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenLayoutBugDetector:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onAttachedToWindow()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    .line 214
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_PLMN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    .line 217
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_2

    .line 218
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    .line 220
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    if-eqz p0, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->onAttachedToWindow()V

    :cond_3
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .line 376
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_PLMN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 228
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->onDetachedFromWindow()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierLogoInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 236
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_PLMN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCarrierPlmnInflater:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenViewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->destroy()V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorGardenLayoutBugDetector:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->destroy()V

    .line 243
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    if-eqz p0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->onDetachedFromWindow()V

    :cond_3
    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    .line 388
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onExpandingFinished()V

    .line 393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onExpandingFinished()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 171
    sget v0, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBattery:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_0

    const-string v1, "PhoneStatusBarView"

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 175
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIconContainer:Landroid/view/ViewGroup;

    .line 178
    sget v0, Lcom/android/systemui/R$id;->networkSpeed:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetspeedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 180
    sget v0, Lcom/android/systemui/R$id;->cutout_space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSpace:Landroid/view/View;

    .line 181
    sget v0, Lcom/android/systemui/R$id;->centered_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCenterIconSpace:Landroid/view/View;

    .line 182
    sget v0, Lcom/android/systemui/R$id;->status_bar_area:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarAreaView:Landroid/view/ViewGroup;

    .line 185
    sget v0, Lcom/android/systemui/R$id;->phone_status_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateResources()V

    .line 190
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTwoPhoneModeIcon:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 399
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 621
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 623
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    .line 330
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIsFullyOpenedPanel:Z

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .line 324
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedVisible(Z)V

    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 309
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 315
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 316
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 353
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V

    if-nez v0, :cond_1

    .line 363
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 368
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStarted()V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onTrackingStarted()V

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removePendingHideExpandedRunnables()V

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    .line 382
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onTrackingStopped(Z)V

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 0

    .line 414
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 417
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPanelExpandedChange()V

    :cond_1
    return-void
.end method

.method public panelScrimMinFractionChanged(F)V
    .locals 1

    .line 406
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMinFraction:F

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->updateScrimFraction()V

    :cond_0
    return-void
.end method

.method public removePendingHideExpandedRunnables()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHideExpandedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 149
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$l0TwX8pr4s7FsEkZB97ztCYonxU;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$l0TwX8pr4s7FsEkZB97ztCYonxU;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 152
    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$hKikydd_7o-fwqxdaneryV_8PJQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarView$hKikydd_7o-fwqxdaneryV_8PJQ;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 157
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateTwoPhoneIcons()V

    :cond_0
    return-void
.end method

.method public setBgAlpha(F)V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 806
    :cond_0
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    .line 807
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isFullyPanelBackgroundOpaque()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const/4 v0, 0x0

    .line 809
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 810
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarAlpha:F

    .line 811
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setFraction(F)V

    :cond_2
    return-void
.end method

.method public setBgColor(I)V
    .locals 2

    .line 790
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->CALL_DEBUG:Z

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBgColor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentBgColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatusBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCurrentBgColor:I

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCoverMargin(IZ)V
    .locals 1

    .line 612
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->updateCoverMargin(IZ)V

    :cond_0
    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 837
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    .line 841
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    return-void
.end method

.method public updateResources()V
    .locals 3

    .line 434
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->display_cutout_margin_consumption:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCutoutSideNudge:I

    .line 437
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    .line 445
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_COVER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndicatorCoverManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->updateResources()V

    .line 450
    :cond_1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_indicator_marquee_max_shift_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    if-nez v1, :cond_2

    .line 452
    new-instance v1, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMaxShiftSize(I)V

    .line 459
    :goto_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotiIconWidth:I

    return-void
.end method
