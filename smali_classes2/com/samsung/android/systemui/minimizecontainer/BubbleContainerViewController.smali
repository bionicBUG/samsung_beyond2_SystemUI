.class public Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
.super Ljava/lang/Object;
.source "BubbleContainerViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;,
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

.field private final mFullscreenModeRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private final mHideContainerViewRunnable:Ljava/lang/Runnable;

.field private mIsTrashBoxHiding:Z

.field private mIsTrashBoxShown:Z

.field private mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mNonDecorDisplayFrame:Landroid/graphics/Rect;

.field private mState:I

.field private mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

.field private mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    .line 239
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$DVxNt7s1vk7Izl1KxNElm-YodHw;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$DVxNt7s1vk7Izl1KxNElm-YodHw;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 84
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 85
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static containerStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "STATE_FOLDER"

    return-object p0

    :cond_1
    const-string p0, "STATE_POINTER"

    return-object p0
.end method

.method private enableBlurEffect(Z)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 404
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 408
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 409
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 428
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v0, "BubbleContainer"

    .line 429
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 430
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 431
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 432
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x2

    .line 433
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0xa2c

    .line 434
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x1000328

    .line 435
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 440
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 441
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x1

    .line 442
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object p0
.end method

.method private notifyViewDestroyed()V
    .locals 3

    .line 576
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;

    .line 577
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onViewDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubbleContainerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;->onViewDestroyed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private savePositionToSharedPreferences(FF)V
    .locals 2

    .line 486
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    const-string v0, "minimize_container_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 488
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "position_x"

    .line 489
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string p1, "position_y"

    .line 490
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private scalePositionToSharedPreferences(FF)V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    .line 495
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 496
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_1

    mul-float/2addr v1, p1

    .line 497
    iput v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    .line 498
    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 499
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] scalePositionToSharedPreferences, new position=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") scale=("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleContainerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->savePositionToSharedPreferences(FF)V

    :cond_1
    return-void
.end method

.method private setFocusable(Z)V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    and-int/lit8 v2, v1, -0x9

    .line 417
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    or-int/lit8 v2, v1, 0x8

    .line 419
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_1

    .line 422
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] setFocusable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleContainerManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method closeFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/4 v1, 0x0

    const-string v2, "BubbleContainerManager"

    if-nez v0, :cond_1

    .line 348
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "[ViewController] close failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist, close failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] close FullscreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 361
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "[ViewController] FullscreenMode Disabled"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method countPublishedItem()I
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->countPublishedItem()I

    move-result p0

    return p0
.end method

.method destroy()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v2, "[ViewController] destory"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyViewDestroyed()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 132
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    return-void

    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method getDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    .line 527
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object p0

    return-object p0
.end method

.method public getNonDecorDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    .line 546
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method getSafeInsetTop()I
    .locals 1

    .line 456
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 457
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 460
    iget-object p0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method handleOutsideTouchFolderView(Landroid/view/MotionEvent;)V
    .locals 3

    .line 186
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getFolderBounds()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v0, v0

    float-to-int v1, v1

    .line 193
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] onTouchEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), close folder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleContainerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    .line 195
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method hideTrashBox()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->hideTrashBox()V

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    :cond_0
    return-void
.end method

.method hideWindow()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    if-eqz v0, :cond_4

    .line 217
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[ViewController] Hide Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePointerViewVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    if-eqz v1, :cond_3

    .line 225
    iget-boolean v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->setTrashBoxShownState(Z)V

    const-string v0, "fullscreen_mode_request_trash_box"

    .line 227
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->removeRunnables()V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->clearAllAnimations()V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;)V
    .locals 2

    .line 89
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[ViewController] init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    .line 95
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    .line 96
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateDisplayFrame(Z)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/android/systemui/R$layout;->minimize_container_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    .line 104
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    sget p2, Lcom/android/systemui/R$id;->minimize_container_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/android/systemui/R$layout;->minimize_container_trashbox_layout:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;)V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getSafeInsetTop()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 123
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method isFolderCloseAnimating()Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->isFolderCloseAnimating()Z

    move-result p0

    return p0
.end method

.method isFullscreenMode()Z
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isInRemoveRange(Landroid/graphics/Rect;)Z
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->isInRemoveRange(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method isPointerViewState()Z
    .locals 1

    .line 242
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTrashBoxHiding()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    return p0
.end method

.method isTrashBoxShown()Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    return p0
.end method

.method public synthetic lambda$new$0$BubbleContainerViewController()V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$throwTrashAway$1$BubbleContainerViewController()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->throwAwayAllItems()V

    return-void
.end method

.method public synthetic lambda$throwTrashAway$2$BubbleContainerViewController(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->throwAwayItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method launchItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mItemController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->launchItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method loadPositionFromSharedPreferences(FF)Landroid/graphics/PointF;
    .locals 4

    .line 472
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    const-string v0, "minimize_container_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "position_x"

    .line 474
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v1, "position_y"

    .line 475
    invoke-interface {p0, v1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 477
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] loadPositionFromSharedPreferences, position=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") default=("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubbleContainerManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method notifyIconPositionChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->updateTrashBoxCoverState(Landroid/graphics/Rect;)V

    return-void
.end method

.method notifyItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 562
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;

    .line 563
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onItemAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubbleContainerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;->onItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 569
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;

    .line 570
    sget-boolean v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ViewController] onItemRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubbleContainerManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;->onItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyRotationChanged(II)V
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;

    .line 584
    sget-boolean v2, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ViewController] onRotationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BubbleContainerManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;->onRotationChanged(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method onKeyDown(I)V
    .locals 2

    .line 393
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 395
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] onKeyDown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), close folder"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleContainerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 396
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    :cond_1
    return-void
.end method

.method openFullscreenMode(Ljava/lang/String;)Z
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/4 v1, 0x0

    const-string v2, "BubbleContainerManager"

    if-nez v0, :cond_1

    .line 326
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "[ViewController] open failed: mContainerView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ViewController] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already opened"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] open FullscreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFullscreenModeRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 339
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "[ViewController] FullscreenMode Enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->requestTransparentRegion(Landroid/view/View;)V

    :cond_6
    return v0
.end method

.method registerCallback(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$BubbleContainerCallback;)V
    .locals 2

    .line 590
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] registerCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeAllIconViews()V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->removeAllIconViews()V

    return-void
.end method

.method requestLayout()V
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method saveBubbleContainerBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    .line 510
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->savePositionToSharedPreferences(FF)V

    .line 511
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 513
    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    invoke-direct {p1, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 514
    iget p0, v0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    div-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x3

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/2addr v0, p1

    add-int/2addr p0, v0

    :try_start_0
    const-string p1, "2203"

    .line 516
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowLogger;->FREEFORM_DETAIL_MOVE_ICON:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-static {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method setTrashBoxShownState(Z)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    if-eq v0, p1, :cond_1

    .line 289
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    .line 291
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxShown:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 292
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    :cond_1
    return-void
.end method

.method showTrashBox(Landroid/graphics/Rect;)Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method showWindow()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    if-eqz v0, :cond_2

    .line 206
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[ViewController] Show Window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mHideContainerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    :cond_2
    return-void
.end method

.method throwTrashAway(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    .line 264
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$rxxwApvWMS426RckB7as8bkqjuU;

    invoke-direct {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$rxxwApvWMS426RckB7as8bkqjuU;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerViewController$c-Cb7UtCBMKbgtMPJRhhf9lICKU;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mThrowTrashAwayCompleteRunnable:Ljava/lang/Runnable;

    .line 269
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mTrashBoxView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->throwTrashAway(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 270
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mIsTrashBoxHiding:Z

    :cond_1
    return-void
.end method

.method updateContainerState(IZ)V
    .locals 3

    .line 143
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    if-eq v0, p1, :cond_4

    .line 144
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ViewController] updateContainerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->containerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    .line 146
    iget p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerViewAccessibility(Z)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getFolderWidth()I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getFolderHeight()I

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->getFolderPosition(II)Landroid/graphics/PointF;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->setFolderPosition(Landroid/graphics/PointF;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->getFolderBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToHidePointerView(Landroid/graphics/Rect;)V

    .line 172
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->enableBlurEffect(Z)V

    .line 173
    invoke-direct {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->setFocusable(Z)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->openFolder(Z)V

    .line 176
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/16 p2, 0x40

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->setPointerViewAccessibility(Z)V

    .line 149
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updatePointerViewVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mFolderView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->closeFolder(Z)V

    .line 153
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->enableBlurEffect(Z)V

    .line 154
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->setFocusable(Z)V

    if-eqz p2, :cond_3

    .line 156
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToShowPointerGroupView()V

    .line 181
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContainerView:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->updateTouchableRegion()V

    :cond_4
    return-void
.end method

.method updateDisplayFrame(Z)V
    .locals 6

    .line 531
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 533
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 534
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 535
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 539
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 540
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 541
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->scalePositionToSharedPreferences(FF)V

    :cond_0
    return-void
.end method
