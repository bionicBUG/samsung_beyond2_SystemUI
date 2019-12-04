.class public Lcom/android/systemui/facewidget/FaceWidgetViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "FaceWidgetViewPager.java"


# instance fields
.field private mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

.field private mCurrentPosition:I

.field private mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field private mIsPageMoveForced:Z

.field private mIsRTLMode:Z

.field private mLastPositionOffset:F

.field private mMinHeight:I

.field private mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mScrollState:I

.field private mSwipeLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mMinHeight:I

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsPageMoveForced:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mLastPositionOffset:F

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    .line 71
    new-instance p1, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager$1;-><init>(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mLastPositionOffset:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/facewidget/FaceWidgetViewPager;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mLastPositionOffset:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mScrollState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/facewidget/FaceWidgetViewPager;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mScrollState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsPageMoveForced:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsPageMoveForced:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/facewidget/FaceWidgetViewPager;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->isCloneClockPage()Z

    move-result p0

    return p0
.end method

.method private getCachedClockPage()Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;
    .locals 7

    const-string v0, "servicebox_clock"

    const-string v1, "clone_clock"

    .line 353
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getOrderedPageItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 355
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 356
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {v2, v5, v6}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 359
    check-cast v5, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMeasuredClockHeight(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    .line 371
    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 372
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private isClockPage(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 376
    instance-of p0, p1, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCloneClockPage()Z
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getCurrentPagePackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "clone_clock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isRTL()Z
    .locals 1

    .line 412
    iget-object p0, p0, Lcom/android/internal/widget/ViewPager;->mContext:Landroid/content/Context;

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

.method private isRtl()Z
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recalculateScrollPosition()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager$2;-><init>(Lcom/android/systemui/facewidget/FaceWidgetViewPager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private updateMinHeight()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getMinHeight()I

    move-result v0

    goto :goto_0

    .line 418
    :cond_0
    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getMinHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentPagePackageName()Ljava/lang/String;
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    const-string v1, "FaceWidgetViewPager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "getCurrentPagePackageName() return - adapter is null"

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsRTLMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mCurrentPosition:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mCurrentPosition:I

    :goto_0
    if-ltz v0, :cond_4

    .line 262
    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    goto :goto_2

    .line 267
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getItem(I)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 263
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPagePackageName() return - mIsRTLModd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsRTLMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", currentPageIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", childCount = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getCount()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 401
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->updateMinHeight()V

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->isRTL()Z

    move-result p1

    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsRTLMode:Z

    if-eq v0, p1, :cond_0

    .line 406
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsRTLMode:Z

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->recalculateScrollPosition()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 392
    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->onFinishInflate()V

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->isRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mIsRTLMode:Z

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->updateMinHeight()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 449
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 451
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 453
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mCurrentPosition:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 459
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 460
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 461
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 424
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 284
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/4 p2, 0x0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_6

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 295
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 307
    iget v3, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mMinHeight:I

    move v4, p2

    :goto_1
    if-ge p2, v2, :cond_3

    .line 314
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 315
    invoke-direct {p0, v5}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->isClockPage(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 316
    check-cast v5, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    invoke-direct {p0, v5, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getMeasuredClockHeight(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;II)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v3, v4

    :cond_1
    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getCachedClockPage()Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    move-result-object p2

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->getMeasuredClockHeight(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;II)I

    move-result p2

    if-ge v3, p2, :cond_4

    move v0, p2

    goto :goto_3

    :cond_4
    move v0, v3

    .line 346
    :cond_5
    :goto_3
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 348
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->recalculateScrollPosition()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 382
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 197
    instance-of v0, p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mAdapter:Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentItem() item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mScrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPositionOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mLastPositionOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mScrollState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mLastPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 235
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 238
    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int v4, p1, v3

    if-ge v4, v2, :cond_1

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentItem(), set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollX(I)V

    :cond_1
    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mScrollState:I

    .line 246
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    return-void
.end method

.method public setPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSwipeLocked(Z)V
    .locals 2

    .line 437
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    if-eq v0, p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwipeLocked() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/FaceWidgetViewPager;->mSwipeLocked:Z

    :cond_0
    return-void
.end method
