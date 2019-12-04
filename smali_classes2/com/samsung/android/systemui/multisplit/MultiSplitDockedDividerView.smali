.class public Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;
.super Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;
.source "MultiSplitDockedDividerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field private mBackground:Landroid/view/View;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFocusedWindowingMode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

.field private mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

.field private mIsInSplitMode:Z

.field private mMinimized:Z

.field private mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

.field private mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

.field private mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mTmpInt2:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 38
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpInt2:[I

    .line 54
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)Landroid/graphics/Rect;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;Landroid/graphics/Rect;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    return-object p0
.end method

.method private getBackgroundFrame(Landroid/graphics/Rect;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpInt2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 234
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpInt2:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private getSnapAlgorithm()Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    :goto_0
    return-object p0
.end method

.method private initializeSnapAlgorithm(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    .line 240
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    if-nez p1, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayWidth:I

    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayHeight:I

    iget-object v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMinimized:Z

    .line 243
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mVerticalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    if-nez p1, :cond_2

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayWidth:I

    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayHeight:I

    iget-object v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMinimized:Z

    .line 248
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mHorizontalDivisionSnapAlgorithm:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    :cond_2
    return-void
.end method

.method private isHorizontalDivision()Z
    .locals 1

    .line 228
    iget p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mDockSide:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$iRUOFFeYLXYj6b_qOshY-ahQkls(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onSubTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private onSubTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 178
    :goto_0
    sget-boolean v4, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch : action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiSplitDockedDividerView"

    invoke-static {v5, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v7, :cond_8

    if-eq v4, v5, :cond_2

    const/4 v1, 0x3

    if-eq v4, v1, :cond_8

    const/4 v0, 0x4

    goto/16 :goto_3

    .line 198
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTouchSlop:I

    if-gt v4, v5, :cond_4

    .line 199
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTouchSlop:I

    if-le v4, v5, :cond_5

    :cond_4
    move v4, v7

    goto :goto_1

    :cond_5
    move v4, v6

    .line 200
    :goto_1
    iget-boolean v5, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 201
    iput v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    .line 202
    iput v2, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    .line 203
    iput-boolean v7, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    .line 205
    :cond_6
    iget-boolean v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 206
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 207
    iget-boolean v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mSnappedToDismissTarget:Z

    if-eqz v1, :cond_7

    .line 208
    iput-boolean v6, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mSnappedToDismissTarget:Z

    .line 210
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object v2, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->requestShowForSubHandler(Landroid/graphics/Rect;I)V

    .line 211
    invoke-virtual {v0, v7}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    goto :goto_3

    .line 216
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->setEnabledHandleViews()V

    .line 217
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 218
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object v2, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v4, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$02PaLB3awti9Xgyp-g5i_TZ-LmU;

    invoke-direct {v4, v0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$02PaLB3awti9Xgyp-g5i_TZ-LmU;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->requestHideForSubHandler(Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    goto :goto_3

    .line 187
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->setExclusiveEnabledHandleViews(Landroid/view/View;)V

    .line 188
    iput v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    .line 189
    iput v2, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    .line 190
    iput-boolean v6, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    .line 191
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 192
    iget-object v8, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v10

    iget v11, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayWidth:I

    iget v12, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayHeight:I

    iget v13, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mFocusedWindowingMode:I

    .line 194
    iget-object v1, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_a

    move v14, v7

    goto :goto_2

    :cond_a
    move v14, v5

    :goto_2
    iget-object v15, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    .line 192
    invoke-virtual/range {v8 .. v15}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->initGuideController(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;ZIIIILandroid/graphics/Rect;)V

    :cond_b
    :goto_3
    return v7
.end method

.method private setEnabledHandleViews()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 262
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setExclusiveEnabledHandleViews(Landroid/view/View;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    if-eq p1, v0, :cond_1

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    if-eq p1, p0, :cond_2

    .line 273
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateDisplayInfo()V
    .locals 2

    .line 278
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 280
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayWidth:I

    .line 281
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayHeight:I

    const/4 v0, 0x1

    .line 282
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->initializeSnapAlgorithm(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSubTouch$1$MultiSplitDockedDividerView()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    .line 220
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    return-void
.end method

.method public synthetic lambda$onTouch$0$MultiSplitDockedDividerView()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 61
    sget v0, Lcom/android/systemui/R$id;->multi_split_docked_divider_handle_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    sget v0, Lcom/android/systemui/R$id;->multi_split_docked_divider_sub_handle_view_primary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    new-instance v1, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$iRUOFFeYLXYj6b_qOshY-ahQkls;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$iRUOFFeYLXYj6b_qOshY-ahQkls;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    sget v0, Lcom/android/systemui/R$id;->multi_split_docked_divider_sub_handle_view_secondary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    new-instance v1, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$iRUOFFeYLXYj6b_qOshY-ahQkls;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$iRUOFFeYLXYj6b_qOshY-ahQkls;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    sget v0, Lcom/android/systemui/R$id;->multi_split_docked_divider_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mBackground:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e0

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x10501df

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTouchSlop:I

    .line 79
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView$1;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 88
    new-instance v0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->updateDisplayInfo()V

    return-void
.end method

.method onGuideViewVisibilityChanged(Z)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 156
    sget v2, Lcom/android/systemui/R$color;->multi_split_stack_divider_guide_view_color:I

    goto :goto_0

    .line 157
    :cond_0
    sget v2, Lcom/android/systemui/R$color;->docked_divider_background:I

    :goto_0
    const/4 v3, 0x0

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMultiSplitHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->setGuideViewMode(Z)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mPrimaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->setGuideViewMode(Z)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mSecondaryHandleView:Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->setGuideViewMode(Z)V

    .line 166
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mDividerController:Lcom/samsung/android/systemui/multisplit/MultiSplitDivider;

    if-eqz p0, :cond_4

    .line 167
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDivider;->mController:Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController;->updateStackDividerColor(Z)V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p1

    .line 106
    :goto_0
    sget-boolean v1, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch : action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSplitDockedDividerView"

    invoke-static {v2, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_9

    if-eq p2, v8, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_8

    const/4 p0, 0x4

    goto/16 :goto_2

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    sub-int p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTouchSlop:I

    if-gt p2, v2, :cond_4

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTouchSlop:I

    if-le p2, v2, :cond_5

    :cond_4
    move p2, v8

    goto :goto_1

    :cond_5
    move p2, v1

    .line 127
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    .line 128
    iput p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    .line 129
    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    .line 130
    iput-boolean v8, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    .line 132
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mDockSide:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_a

    .line 133
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 134
    iget-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mSnappedToDismissTarget:Z

    if-eqz p1, :cond_7

    .line 135
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mSnappedToDismissTarget:Z

    .line 137
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMinimized:Z

    iget-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mIsInSplitMode:Z

    invoke-virtual {p1, p2, v4, v0, v1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->requestShow(Landroid/graphics/Rect;IZZ)V

    .line 138
    invoke-virtual {p0, v8}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->onGuideViewVisibilityChanged(Z)V

    goto :goto_2

    .line 143
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 144
    iget-object v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mMinimized:Z

    iget-boolean v6, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mIsInSplitMode:Z

    new-instance v7, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$QEI14is24XjL4QovYSUrWBgUSbw;

    invoke-direct {v7, p0}, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitDockedDividerView$QEI14is24XjL4QovYSUrWBgUSbw;-><init>(Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;)V

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->requestHide(Landroid/graphics/Rect;IZZLjava/lang/Runnable;)V

    goto :goto_2

    .line 115
    :cond_9
    iput p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartX:I

    .line 116
    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mStartY:I

    .line 117
    iput-boolean v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerView;->mMoving:Z

    .line 118
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getBackgroundFrame(Landroid/graphics/Rect;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mGuideViewController:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->isHorizontalDivision()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mFocusedWindowingMode:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->initGuideController(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm;ZIIIILandroid/graphics/Rect;)V

    :cond_a
    :goto_2
    return v8
.end method
