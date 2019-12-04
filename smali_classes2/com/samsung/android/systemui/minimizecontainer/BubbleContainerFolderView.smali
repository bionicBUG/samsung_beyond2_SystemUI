.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BubbleContainerFolderView.java"

# interfaces
.implements Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;,
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;,
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

.field private mAnimatingSpringX:Z

.field private mAnimatingSpringY:Z

.field private mBlockDataUpdate:Z

.field private mContext:Landroid/content/Context;

.field private mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

.field private mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

.field private mDraggingAppIconView:Landroid/widget/ImageView;

.field private mFolderViewHeight:I

.field private mFolderViewPositionPaddingLeft:I

.field private mFolderViewPositionPaddingRight:I

.field private mFolderViewWidth:I

.field private mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private mIsCloseAnimating:Z

.field private mIsMoving:Z

.field private mIsOpenAnimating:Z

.field private mIsOpened:Z

.field private mIsTouchDown:Z

.field private mItemAddedWhileAnimating:Z

.field private mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLastPositionX:F

.field private mLastPositionY:F

.field private mLastScrollState:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mMaxFolderViewWidth:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mOpenFolderRunnable:Ljava/lang/Runnable;

.field private mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private mStatusBarHeight:I

.field private mTargetAppIconView:Landroid/widget/ImageView;

.field private mTargetItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

.field private mTargetLocation:[I

.field private mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 133
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpened:Z

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsTouchDown:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsMoving:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpenAnimating:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsCloseAnimating:Z

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mBlockDataUpdate:Z

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemAddedWhileAnimating:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 102
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetLocation:[I

    .line 104
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringX:Z

    .line 108
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringY:Z

    .line 111
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastScrollState:I

    .line 113
    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 643
    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    .line 135
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 137
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isRtl()Z

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 138
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$1;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    .line 139
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    .line 141
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 144
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 145
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastScrollState:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/view/LayoutInflater;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpenAnimating:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpenAnimating:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemWidth:I

    return p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mBlockDataUpdate:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mBlockDataUpdate:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemAddedWhileAnimating:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemAddedWhileAnimating:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringX:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isSpringAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2602(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringY:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsMoving:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/graphics/Rect;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Landroid/widget/ImageView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->startDraggingAppIcon(Landroid/widget/ImageView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private animateToCloseFolderView()V
    .locals 3

    .line 619
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[FolderView] animateToCloseFolderView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsCloseAnimating:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 621
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 623
    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$zYusCLhO-oLaG-Ni8F67YFwj3_Q;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$zYusCLhO-oLaG-Ni8F67YFwj3_Q;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    sget-object p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 634
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animateToOpenFolderView()V
    .locals 3

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpenAnimating:Z

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 598
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 599
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 606
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x11b

    .line 607
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$xnwSkXDMwfBenkXqfF5l9VD8gtY;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$xnwSkXDMwfBenkXqfF5l9VD8gtY;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 613
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 615
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private animateToReturnDraggingAppIconView()V
    .locals 14

    .line 721
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 723
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    const/4 v5, 0x1

    .line 724
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float v6, v0, v4

    .line 727
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringX:Z

    sub-float v6, v1, v2

    .line 728
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    move v3, v5

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringY:Z

    .line 730
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isSpringAnimating()Z

    move-result v3

    if-nez v3, :cond_3

    .line 731
    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], to=["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], call finishDraggingAppIcon()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->finishDraggingAppIcon()V

    return-void

    .line 738
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    .line 739
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    const-wide v8, 0x4066800000000000L    # 180.0

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 740
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 741
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 742
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    new-instance v5, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    invoke-virtual {v3, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 759
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v12, v0

    invoke-virtual {v3, v12, v13}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 760
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 762
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    .line 763
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/facebook/rebound/SpringConfig;

    invoke-direct {v3, v8, v9, v6, v7}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 764
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    .line 765
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v10, v11}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    .line 766
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 784
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 785
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method private finishDraggingAppIcon()V
    .locals 3

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isSpringAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconSpringY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    :cond_1
    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringX:Z

    .line 330
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringY:Z

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 334
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    .line 335
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getDraggingAppIconBounds()Landroid/graphics/Rect;
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 252
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 253
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private hideTrashBoxIfNeeded()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 580
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->throwTrashAway(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->hideTrashBox()V

    .line 584
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->animateToReturnDraggingAppIconView()V

    .line 588
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 589
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 794
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSpringAnimating()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringX:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAnimatingSpringY:Z

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

.method private startDraggingAppIcon(Landroid/widget/ImageView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->finishDraggingAppIcon()V

    .line 309
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 311
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 313
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetLocation:[I

    .line 314
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 315
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mTargetLocation:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 316
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 317
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateFolderSize()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->getItemMargin()Landroid/graphics/Rect;

    move-result-object v1

    .line 265
    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    .line 266
    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    .line 268
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    iget-object v5, v4, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v6, v5

    iget v4, v4, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    .line 272
    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    iget v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mMaxFolderViewWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    .line 274
    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemHeight:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    .line 276
    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    if-eq v3, v1, :cond_2

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 278
    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FolderView] updateFolderSize: itemCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size=("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BubbleContainerManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method closeFolder(Z)V
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpened:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpened:Z

    .line 203
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mBlockDataUpdate:Z

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 206
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->finishDraggingAppIcon()V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mOpenFolderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->animateToCloseFolderView()V

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 223
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string p1, "fullscreen_mode_request_folder"

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 226
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p0, :cond_3

    const-string p0, "A"

    .line 227
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method getFolderBounds()Landroid/graphics/Rect;
    .locals 3

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 236
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 237
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    add-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method getFolderHeight()I
    .locals 0

    .line 247
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    return p0
.end method

.method getFolderWidth()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    return p0
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V
    .locals 3

    .line 149
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 150
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->registerCallback(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;)V

    .line 152
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    .line 154
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$id;->minimize_container_folder_dragging_icon_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050403

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mStatusBarHeight:I

    .line 156
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->minimize_container_item_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemWidth:I

    .line 157
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->minimize_container_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemHeight:I

    .line 158
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->minimize_container_folder_position_padding_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingLeft:I

    .line 161
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->minimize_container_folder_position_padding_right:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingRight:I

    .line 163
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_0
    const/4 p2, 0x5

    :goto_1
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    .line 168
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemWidth:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemDecoration:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;

    iget v2, v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    add-int/2addr v0, v2

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v0, v2

    iget-object v2, v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mMaxFolderViewWidth:I

    .line 171
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mMaxFolderViewWidth:I

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingRight:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 p1, 0x8

    .line 178
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method isFolderCloseAnimating()Z
    .locals 0

    .line 638
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsCloseAnimating:Z

    return p0
.end method

.method public synthetic lambda$animateToCloseFolderView$1$BubbleContainerFolderView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 624
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 625
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 627
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 628
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 629
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v0, "fullscreen_mode_request_folder"

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 630
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsCloseAnimating:Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$animateToOpenFolderView$0$BubbleContainerFolderView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 609
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 610
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->hideTrashBoxIfNeeded()V

    const/4 p1, 0x0

    .line 522
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsTouchDown:Z

    :cond_1
    return v2

    :cond_2
    if-nez v0, :cond_3

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 531
    iput-boolean v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsTouchDown:Z

    .line 532
    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionX:F

    .line 533
    iput v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionY:F

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FolderView] onInterceptTouchEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    .line 343
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mBlockDataUpdate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 344
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 345
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "BubbleContainerManager"

    const-string p1, "[FolderView] onItemAdded: item is added while opening folder"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    .line 354
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->updateFolderSize()V

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->finishDraggingAppIcon()V

    return-void
.end method

.method public onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->updateFolderSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "[FolderView] onTouchEvent("

    const-string v4, "BubbleContainerManager"

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    goto/16 :goto_0

    .line 546
    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsTouchDown:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v6}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 547
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsMoving:Z

    if-nez p1, :cond_1

    .line 548
    iput-boolean v5, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsMoving:Z

    .line 549
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): ready to move"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionX:F

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 552
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mDraggingAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionY:F

    sub-float v3, v1, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 553
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionX:F

    .line 554
    iput v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mLastPositionY:F

    .line 556
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->isTrashBoxShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getDraggingAppIconBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyIconPositionChanged(Landroid/graphics/Rect;)V

    :cond_2
    return v5

    .line 565
    :cond_3
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->hideTrashBoxIfNeeded()V

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsMoving:Z

    .line 568
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsTouchDown:Z

    .line 574
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewDestroyed()V
    .locals 0

    return-void
.end method

.method openFolder(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    const-string v1, "fullscreen_mode_request_folder"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpened:Z

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mAdapter:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mIsOpened:Z

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->animateToOpenFolderView()V

    .line 191
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p1, :cond_1

    .line 192
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result p0

    int-to-long p0, p0

    const-string v0, "2211"

    .line 192
    invoke-static {v0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method setFolderPosition(Landroid/graphics/PointF;)V
    .locals 7

    .line 289
    new-instance v6, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v2

    float-to-int v0, v0

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewWidth:I

    add-int/2addr v0, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewHeight:I

    add-int/2addr v2, v4

    invoke-direct {v6, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getNonDecorDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 292
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mStatusBarHeight:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 293
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingLeft:I

    neg-int v2, v0

    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->mFolderViewPositionPaddingRight:I

    neg-int v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    .line 295
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 296
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 297
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 298
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 299
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FolderView] setFolderPosition: x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleContainerManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
