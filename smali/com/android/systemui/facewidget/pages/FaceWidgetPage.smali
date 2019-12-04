.class public abstract Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.super Landroid/widget/FrameLayout;
.source "FaceWidgetPage.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;


# instance fields
.field private final mAttachContentsRunnable:Ljava/lang/Runnable;

.field private mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

.field protected mGravity:I

.field protected mIsAnimating:Z

.field protected mIsMKeyboardConnected:Z

.field protected mIsReservedToTransition:Z

.field protected mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mLocation:[I

.field public mNavigationBarHeight:I

.field protected mOrientation:I

.field private mPageLocation:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

.field protected mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field protected mRes:Landroid/content/res/Resources;

.field protected mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    .line 67
    iput p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    .line 73
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    .line 75
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 86
    new-instance p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 110
    new-instance p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$2;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 137
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mLocation:[I

    .line 658
    new-instance p2, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPage$36VaoocxVw6ZBO26gGdj7kTJI2M;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPage$36VaoocxVw6ZBO26gGdj7kTJI2M;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mRes:Landroid/content/res/Resources;

    .line 157
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mWindowManager:Landroid/view/WindowManager;

    .line 158
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mRes:Landroid/content/res/Resources;

    const p2, 0x10501f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    .line 160
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    return-void
.end method

.method protected static getMainHandler()Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;
    .locals 3

    .line 770
    const-class v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    monitor-enter v0

    .line 771
    :try_start_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->sHandler:Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    if-nez v1, :cond_0

    .line 772
    new-instance v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;-><init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPage$1;)V

    sput-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->sHandler:Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    .line 774
    :cond_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->sHandler:Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 775
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initSidePaddingInLockScreenMode()V
    .locals 2

    .line 524
    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getClockSidePadding(Landroid/content/Context;)I

    move-result v0

    .line 525
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 526
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onChangedSidePadding()V

    :cond_0
    return-void
.end method

.method private initViewLocationInFullScreenMode(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6

    .line 535
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getCurrentPageRectExceptHolder()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachContentsView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 542
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    .line 541
    invoke-virtual {p2, v1, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to get padding rect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-nez p2, :cond_4

    .line 552
    new-instance p2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-nez v0, :cond_3

    goto :goto_2

    .line 553
    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    invoke-direct {p2, v2, p1, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 554
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setAdditionalTag(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 14

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachContentsView() holder is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".#attachContentsView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isTransitionEnabled()Z

    move-result v1

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 468
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isKeyguardShowing()Z

    move-result v6

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isCovered()Z

    move-result v7

    xor-int/2addr v7, v3

    .line 471
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isReduceAnimation()Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v4

    .line 475
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    .line 476
    iget-object v10, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {p0, v10}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;

    move-result-object v10

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attachContentsView() needToTransition="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "(te="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cc="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aw="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ks="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nc="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nr="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), listener="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childPage="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageLocation:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    aput-object v5, v2, v3

    const-string v5, "attachContentsView %s %s"

    invoke-static {v1, v5, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v10, :cond_3

    .line 489
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 490
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 493
    :cond_3
    iput v4, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    invoke-direct {p0, v0, v10}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->initViewLocationInFullScreenMode(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2

    .line 498
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->initSidePaddingInLockScreenMode()V

    :goto_2
    if-eqz v9, :cond_5

    .line 501
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->isReadyState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 502
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 503
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-virtual {v0, v10, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 507
    invoke-interface {p1, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 508
    invoke-interface {p1, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 510
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 511
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->initViews(Landroid/view/View;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getGravity()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_7

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->updateGravity(IZ)V

    .line 516
    sget-object p1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    .line 518
    iput-boolean v4, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    .line 520
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public clearTransitionData()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method protected closeWindow()V
    .locals 3

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dismissFaceWidget()V

    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getLockscreenPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->disableBlurFlag()V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    :cond_2
    :goto_0
    return-void
.end method

.method protected final disableBlurFlag()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final dismissFaceWidget()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->dismissFaceWidgetFullScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 439
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->closeWindow()V

    const/4 p0, 0x1

    return p0

    .line 449
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected abstract getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
.end method

.method protected getCutoutPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_0

    .line 560
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getClockGravity()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x800003

    return p0
.end method

.method protected getHeightOfHolder()I
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0
.end method

.method protected abstract getHolder()Landroid/view/ViewGroup;
.end method

.method protected final getKeyguardStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_0

    .line 401
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getRectExceptHolder(I)Landroid/graphics/Rect;
    .locals 3

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 760
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 761
    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 762
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTopPosYOfHolder()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 764
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHeightOfHolder()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected getTopPosYOfHolder()I
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mLocation:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 644
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateCompositeOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$id;->keyguard_facewidget_clip_layout:I

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->addClipBlackList(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const/4 p1, 0x7

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setTransitionType(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    return-object p0
.end method

.method protected abstract initViews(Landroid/view/View;)V
.end method

.method protected final isCovered()Z
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_0

    .line 408
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isCovered()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isFullScreenMode()Z
    .locals 1

    .line 582
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageLocation:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->FULLSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isKeyguardShowing()Z
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz p0, :cond_0

    .line 415
    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->isKeyguardShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isLandscape()Z
    .locals 1

    .line 586
    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageStateNone()Z
    .locals 1

    .line 733
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->NONE:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isTransitionEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$FaceWidgetPage()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public makeTransitionData(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-eqz p2, :cond_1

    .line 319
    invoke-virtual {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->cancel()V

    .line 322
    :cond_1
    new-instance p2, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTransitionOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 324
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->setAdditionalTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 662
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 663
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 666
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    .line 667
    invoke-static {}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getMainHandler()Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;->cancelPrevious(Ljava/lang/Object;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mAttachContentsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    .line 668
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews()V

    return-void
.end method

.method protected onChangedSidePadding()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 686
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setOrientation(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDensityOrFontScaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 695
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->updateContentsView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mTransition:Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->cancel()V

    .line 680
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 0

    return-void
.end method

.method protected onPageTransitionEnded()V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onUpdateLockscreenHiddenItems()V
    .locals 0

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 0

    return-void
.end method

.method public refreshViews()V
    .locals 2

    .line 215
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DEFAULT:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs abstract refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
.end method

.method public setFaceWidgetController(Lcom/android/systemui/facewidget/FaceWidgetController;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    .line 191
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageLocation:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setHeight(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setGravityInFrameLayout(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 577
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setGravityInLinearLayout(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 569
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected setHeight(Landroid/view/View;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setHeight wrong view"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 205
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 594
    iget v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 595
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SCREEN_ORIENTATION_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    .line 598
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->initSidePaddingInLockScreenMode()V

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->updateContentsView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZZ)V

    return-void
.end method

.method public setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZZ)V
    .locals 3

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageState() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isReservedToTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_1

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 282
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    if-nez p2, :cond_1

    .line 285
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public showExternalActivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final showFaceWidgetFullScreen()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->showFaceWidgetFullScreen(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 719
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-nez v0, :cond_0

    .line 720
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [ location : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageLocation:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", page state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnimating"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateContentsView()V
    .locals 5

    .line 701
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContentsView() : isAttached -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v1, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 713
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsReservedToTransition:Z

    :goto_0
    return-void
.end method

.method public updateGravity(IZ)V
    .locals 0

    return-void
.end method
