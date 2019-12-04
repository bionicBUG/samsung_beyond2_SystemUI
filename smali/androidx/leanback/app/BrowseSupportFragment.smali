.class public Landroidx/leanback/app/BrowseSupportFragment;
.super Landroidx/leanback/app/BaseSupportFragment;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;,
        Landroidx/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;,
        Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;,
        Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;,
        Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;,
        Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;,
        Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;,
        Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;,
        Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;
    }
.end annotation


# static fields
.field private static final ARG_HEADERS_STATE:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;


# instance fields
.field final EVT_HEADER_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

.field final EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

.field final EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

.field final STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

.field private mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

.field private mBrandColor:I

.field private mBrandColorSet:Z

.field mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

.field mBrowseTransitionListener:Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

.field mCanShowHeaders:Z

.field private mContainerListAlignTop:I

.field private mContainerListMarginStart:I

.field mExternalOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

.field private mHeaderPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

.field private mHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

.field mHeadersBackStackEnabled:Z

.field private mHeadersState:I

.field mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

.field mHeadersTransition:Ljava/lang/Object;

.field mIsPageRow:Z

.field mMainFragment:Landroidx/fragment/app/Fragment;

.field mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field private mMainFragmentAdapterRegistry:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

.field mMainFragmentListRowDataAdapter:Landroidx/leanback/app/ListRowDataAdapter;

.field mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

.field private mMainFragmentScaleEnabled:Z

.field private final mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private final mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field mPageRow:Ljava/lang/Object;

.field private mScaleFactor:F

.field private mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field mSceneWithHeaders:Ljava/lang/Object;

.field mSceneWithoutHeaders:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mSetSelectionRunnable:Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

.field mShowingHeaders:Z

.field mStopped:Z

.field private final mWaitScrollFinishAndCommitMainFragment:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field mWithHeadersBackStackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/leanback/app/BrowseSupportFragment;

    .line 750
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroidx/leanback/app/BaseSupportFragment;-><init>()V

    .line 96
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroidx/leanback/app/BrowseSupportFragment$1;-><init>(Landroidx/leanback/app/BrowseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    .line 107
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    .line 113
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    .line 119
    new-instance v0, Landroidx/leanback/util/StateMachine$Event;

    const-string v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroidx/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

    .line 705
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    const/4 v0, 0x1

    .line 716
    iput v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersState:I

    const/4 v1, 0x0

    .line 717
    iput v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrandColor:I

    .line 722
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    .line 724
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 725
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 728
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    const/4 v1, -0x1

    .line 731
    iput v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 735
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mStopped:Z

    .line 738
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    .line 1079
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$4;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$4;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    .line 1128
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$5;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$5;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    .line 1475
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$10;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$10;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    .line 1510
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$11;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$11;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    .line 1568
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$12;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$12;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mWaitScrollFinishAndCommitMainFragment:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private createMainFragment(Landroidx/leanback/widget/ObjectAdapter;I)Z
    .locals 5

    .line 570
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_d

    .line 572
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    if-gez p2, :cond_2

    move p2, v3

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 581
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 584
    :goto_1
    iget-boolean p2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 585
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 586
    iget-boolean v4, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v4, :cond_3

    instance-of v4, p1, Landroidx/leanback/widget/PageRow;

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    .line 587
    iget-boolean v4, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v4, :cond_4

    move-object v1, p1

    :cond_4
    iput-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 590
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    .line 594
    iget-boolean p2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz p2, :cond_9

    if-nez v0, :cond_7

    :cond_6
    move v2, v3

    goto :goto_3

    .line 601
    :cond_7
    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    if-eq v0, p2, :cond_6

    goto :goto_3

    .line 607
    :cond_8
    iget-boolean v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    :cond_9
    :goto_3
    if-eqz v2, :cond_b

    .line 612
    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-virtual {p2, p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    .line 613
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    instance-of p1, p1, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    if-eqz p1, :cond_a

    .line 618
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    goto :goto_4

    .line 614
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    return v2

    .line 578
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v2, [Ljava/lang/Object;

    .line 579
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Invalid position %d requested"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    return v3
.end method

.method private expandMainFragment(Z)V
    .locals 2

    .line 1462
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_0

    .line 1463
    iget v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1464
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1467
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    if-nez p1, :cond_1

    .line 1468
    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1470
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1471
    :goto_1
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    .line 1472
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    return-void
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1695
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1700
    :cond_0
    new-instance p1, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, p0, p2, v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;-><init>(Landroidx/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->execute()V

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1739
    :cond_0
    sget-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1740
    sget-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1742
    :cond_1
    sget-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1743
    sget-object v0, Landroidx/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->setHeadersState(I)V

    :cond_2
    return-void
.end method

.method private replaceMainFragment(I)V
    .locals 1

    .line 1552
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->createMainFragment(Landroidx/leanback/widget/ObjectAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1553
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;->swapToMainFragment()V

    .line 1554
    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    :cond_2
    return-void
.end method

.method private setHeadersOnScreen(Z)V
    .locals 2

    .line 1448
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1449
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1450
    :cond_0
    iget p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int p0, p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1451
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMainFragmentAlignment()V
    .locals 2

    .line 1704
    iget v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    .line 1705
    iget-boolean v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1706
    invoke-virtual {v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 1708
    iget v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1710
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setAlignment(I)V

    return-void
.end method

.method private swapToMainFragment()V
    .locals 4

    .line 1583
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mStopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1587
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1588
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroidx/leanback/R$id;->scale_frame:I

    new-instance v3, Landroidx/fragment/app/Fragment;

    invoke-direct {v3}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 1592
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1593
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mWaitScrollFinishAndCommitMainFragment:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1594
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mWaitScrollFinishAndCommitMainFragment:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 1597
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->commitMainFragment()V

    :goto_0
    return-void
.end method


# virtual methods
.method final commitMainFragment()V
    .locals 3

    .line 1560
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1561
    sget v1, Landroidx/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1562
    iget-object v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eq v1, v2, :cond_0

    .line 1563
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroidx/leanback/R$id;->scale_frame:I

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    .line 1564
    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 1

    .line 1794
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Landroidx/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {p0, v0}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method createHeadersTransition()V
    .locals 2

    .line 1330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_0

    sget v1, Landroidx/leanback/R$transition;->lb_browse_headers_in:I

    goto :goto_0

    :cond_0
    sget v1, Landroidx/leanback/R$transition;->lb_browse_headers_out:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1334
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroidx/leanback/app/BrowseSupportFragment$9;

    invoke-direct {v1, p0}, Landroidx/leanback/app/BrowseSupportFragment$9;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroidx/leanback/transition/TransitionListener;)V

    return-void
.end method

.method createStateMachineStates()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 124
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, p0}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 129
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 131
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 135
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    .line 139
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroidx/leanback/util/StateMachine$State;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method isFirstRowWithContent(I)Z
    .locals 4

    .line 1420
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1423
    :goto_0
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1424
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/Row;

    .line 1425
    invoke-virtual {v3}, Landroidx/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .locals 5

    .line 1407
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1410
    :goto_0
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v3}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1411
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/Row;

    .line 1412
    invoke-virtual {v3}, Landroidx/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v3, v3, Landroidx/leanback/widget/PageRow;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method final isHeadersDataReady()Z
    .locals 0

    .line 1125
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInHeadersTransition()Z
    .locals 0

    .line 994
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingHeaders()Z
    .locals 0

    .line 1001
    iget-boolean p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    return p0
.end method

.method isVerticalScrolling()Z
    .locals 1

    .line 1075
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersSupportFragment;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScrolling()Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1182
    invoke-super {p0, p1}, Landroidx/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1184
    sget-object v1, Landroidx/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1185
    sget v2, Landroidx/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    .line 1186
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/leanback/R$dimen;->lb_browse_rows_margin_start:I

    .line 1187
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1185
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    .line 1188
    sget v2, Landroidx/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    .line 1189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroidx/leanback/R$dimen;->lb_browse_rows_margin_top:I

    .line 1190
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1188
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    .line 1191
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->readArguments(Landroid/os/Bundle;)V

    .line 1195
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    .line 1196
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v0, :cond_0

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lbHeadersBackStack_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1198
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-direct {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    .line 1199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1200
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "headerShow"

    .line 1203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1208
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$fraction;->lb_browse_rows_scale:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    iput p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    return-void
.end method

.method public onCreateHeadersSupportFragment()Landroidx/leanback/app/HeadersSupportFragment;
    .locals 0

    .line 1237
    new-instance p0, Landroidx/leanback/app/HeadersSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/app/HeadersSupportFragment;-><init>()V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Landroidx/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1245
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->onCreateHeadersSupportFragment()Landroidx/leanback/app/HeadersSupportFragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    .line 1247
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-direct {p0, v0, v3}, Landroidx/leanback/app/BrowseSupportFragment;->createMainFragment(Landroidx/leanback/widget/ObjectAdapter;I)Z

    .line 1248
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Landroidx/leanback/R$id;->browse_headers_dock:I

    iget-object v4, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    .line 1249
    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1251
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 1252
    sget v4, Landroidx/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 1259
    :cond_0
    new-instance v3, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1260
    iget-object v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v4, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v3, v4}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    .line 1263
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 1265
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v3, Landroidx/leanback/R$id;->browse_headers_dock:I

    .line 1266
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/HeadersSupportFragment;

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    .line 1267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v3, Landroidx/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_2

    const-string v0, "isPageRow"

    .line 1270
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz p3, :cond_3

    const-string v0, "currentSelectedPosition"

    .line 1276
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 1278
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentAdapter()V

    .line 1281
    :goto_3
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget-boolean v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    .line 1282
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_4

    .line 1283
    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v1, v0}, Landroidx/leanback/app/BaseRowSupportFragment;->setPresenterSelector(Landroidx/leanback/widget/PresenterSelector;)V

    .line 1285
    :cond_4
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BaseRowSupportFragment;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 1286
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/HeadersSupportFragment;->setOnHeaderViewSelectedListener(Landroidx/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V

    .line 1287
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/HeadersSupportFragment;->setOnHeaderClickedListener(Landroidx/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V

    .line 1289
    sget v0, Landroidx/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1291
    invoke-virtual {p0}, Landroidx/leanback/app/BaseSupportFragment;->getProgressBarManager()Landroidx/leanback/app/ProgressBarManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 1293
    sget v0, Landroidx/leanback/R$id;->browse_frame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    .line 1294
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 1295
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 1297
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroidx/leanback/app/BrandedSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1299
    sget p1, Landroidx/leanback/R$id;->scale_frame:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ScaleFrameLayout;

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    .line 1300
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1301
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroidx/leanback/widget/ScaleFrameLayout;

    iget p3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1303
    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    if-eqz p1, :cond_5

    .line 1304
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget p3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {p1, p3}, Landroidx/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    .line 1307
    :cond_5
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroidx/leanback/app/BrowseSupportFragment$6;

    invoke-direct {p3, p0}, Landroidx/leanback/app/BrowseSupportFragment$6;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-static {p1, p3}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    .line 1313
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroidx/leanback/app/BrowseSupportFragment$7;

    invoke-direct {p3, p0}, Landroidx/leanback/app/BrowseSupportFragment$7;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-static {p1, p3}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    .line 1319
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroidx/leanback/widget/BrowseFrameLayout;

    new-instance p3, Landroidx/leanback/app/BrowseSupportFragment$8;

    invoke-direct {p3, p0}, Landroidx/leanback/app/BrowseSupportFragment$8;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-static {p1, p3}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 1223
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1226
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 1213
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    .line 1214
    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mPageRow:Ljava/lang/Object;

    .line 1215
    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1216
    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    .line 1217
    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    .line 1218
    invoke-super {p0}, Landroidx/leanback/app/BrandedSupportFragment;->onDestroyView()V

    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 1818
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1819
    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1822
    :cond_0
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz p0, :cond_1

    .line 1823
    invoke-virtual {p0}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    :cond_1
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 2

    .line 1805
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    .line 1806
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    .line 1807
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 1812
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    .line 1813
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    return-void
.end method

.method onRowSelected(I)V
    .locals 2

    .line 1527
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1169
    invoke-super {p0, p1}, Landroidx/leanback/app/BrandedSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1170
    iget v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    const-string v1, "currentSelectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1171
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    const-string v1, "isPageRow"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1173
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0, p1}, Landroidx/leanback/app/BrowseSupportFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1176
    :cond_0
    iget-boolean p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    const-string v0, "headerShow"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1662
    invoke-super {p0}, Landroidx/leanback/app/BrandedSupportFragment;->onStart()V

    .line 1663
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroidx/leanback/app/HeadersSupportFragment;->setAlignment(I)V

    .line 1664
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    .line 1666
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1669
    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 1670
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1671
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1674
    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    .line 1675
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->showHeaders(Z)V

    .line 1678
    :cond_3
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    const/4 v0, 0x0

    .line 1680
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mStopped:Z

    .line 1682
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->commitMainFragment()V

    .line 1683
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->start()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    .line 1688
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mStopped:Z

    .line 1689
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->stop()V

    .line 1690
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 0

    .line 1800
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setEntranceTransitionEndState()V
    .locals 1

    .line 1845
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    const/4 v0, 0x1

    .line 1846
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    .line 1847
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    return-void
.end method

.method setEntranceTransitionStartState()V
    .locals 1

    const/4 v0, 0x0

    .line 1837
    invoke-direct {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    .line 1838
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    return-void
.end method

.method public setHeadersState(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/4 v1, 0x3

    if-gt p1, v1, :cond_4

    .line 1760
    iget v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersState:I

    if-eq p1, v2, :cond_3

    .line 1761
    iput p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersState:I

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown headers state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BrowseSupportFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1772
    :cond_0
    iput-boolean v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1773
    iput-boolean v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_0

    .line 1768
    :cond_1
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1769
    iput-boolean v3, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_0

    .line 1764
    :cond_2
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    .line 1765
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1779
    :goto_0
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz p1, :cond_3

    .line 1780
    iget-boolean p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    :cond_3
    return-void

    .line 1756
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid headers state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setMainFragmentAdapter()V
    .locals 3

    .line 625
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    .line 626
    invoke-interface {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 627
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v1, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v1, p0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroidx/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    .line 628
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 629
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    if-eqz v2, :cond_0

    .line 630
    check-cast v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    .line 631
    invoke-interface {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    move-result-object v0

    .line 630
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    .line 635
    :goto_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    goto :goto_2

    .line 637
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrowseSupportFragment;->setMainFragmentRowsAdapter(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    :goto_2
    return-void
.end method

.method setMainFragmentRowsAdapter(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V
    .locals 2

    .line 860
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 868
    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 870
    :cond_1
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    .line 871
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz p1, :cond_2

    .line 872
    new-instance v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;

    invoke-direct {v0, p0, p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;-><init>(Landroidx/leanback/app/BrowseSupportFragment;Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 874
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    .line 877
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->updateMainFragmentRowsAdapter()V

    return-void
.end method

.method setSearchOrbViewOnScreen(Z)V
    .locals 2

    .line 1828
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1830
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1831
    :cond_0
    iget p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int p0, p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1832
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method setSelection(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1536
    :cond_0
    iput p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    .line 1537
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1541
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/app/HeadersSupportFragment;->setSelectedPosition(IZ)V

    .line 1542
    invoke-direct {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->replaceMainFragment(I)V

    .line 1544
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 1545
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    .line 1548
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    :cond_3
    :goto_0
    return-void
.end method

.method showHeaders(Z)V
    .locals 1

    .line 1456
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/HeadersSupportFragment;->setHeadersEnabled(Z)V

    .line 1457
    invoke-direct {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 1458
    invoke-direct {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    return-void
.end method

.method startHeadersTransitionInternal(Z)V
    .locals 2

    .line 1036
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1039
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1042
    :cond_1
    iput-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    .line 1043
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    .line 1044
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    xor-int/lit8 v0, p1, 0x1

    .line 1045
    new-instance v1, Landroidx/leanback/app/BrowseSupportFragment$3;

    invoke-direct {v1, p0, p1}, Landroidx/leanback/app/BrowseSupportFragment$3;-><init>(Landroidx/leanback/app/BrowseSupportFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroidx/leanback/app/BrowseSupportFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateMainFragmentRowsAdapter()V
    .locals 2

    .line 885
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroidx/leanback/app/ListRowDataAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->detach()V

    .line 887
    iput-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroidx/leanback/app/ListRowDataAdapter;

    .line 889
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/leanback/app/ListRowDataAdapter;

    invoke-direct {v1, v0}, Landroidx/leanback/app/ListRowDataAdapter;-><init>(Landroidx/leanback/widget/ObjectAdapter;)V

    :goto_0
    iput-object v1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroidx/leanback/app/ListRowDataAdapter;

    .line 892
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentListRowDataAdapter:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0, p0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    :cond_2
    return-void
.end method

.method updateTitleViewVisibility()V
    .locals 3

    .line 1371
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1373
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_0

    .line 1378
    :cond_0
    iget v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 1381
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(I)V

    goto :goto_3

    .line 1383
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_3

    .line 1389
    :cond_2
    iget-boolean v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_3

    .line 1390
    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v0, v0, Landroidx/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    goto :goto_1

    .line 1392
    :cond_3
    iget v0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v0

    .line 1394
    :goto_1
    iget v2, p0, Landroidx/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroidx/leanback/app/BrowseSupportFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_5
    if-eqz v0, :cond_6

    .line 1399
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(I)V

    goto :goto_3

    .line 1401
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    :goto_3
    return-void
.end method
