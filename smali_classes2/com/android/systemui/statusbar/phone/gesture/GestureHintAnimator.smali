.class public Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;
.super Ljava/lang/Object;
.source "GestureHintAnimator.java"


# static fields
.field private static GESTURE_CENTER:I = 0x1

.field private static GESTURE_LEFT:I = 0x0

.field private static GESTURE_RIGHT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentHintId:I

.field mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field private mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

.field mHandler:Lcom/android/systemui/volume/util/HandlerWrapper;

.field mHoldingViAnimator:Landroid/animation/AnimatorSet;

.field private mIsCanMove:Z

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mIsCanMove:Z

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/HandlerWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHandler:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    .line 47
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    return-void
.end method

.method private dipToPixel(F)F
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 159
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v0, "GestureHintAnimator"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetHintView(I)V
    .locals 12

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result p1

    .line 83
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mIsCanMove:Z

    const/4 v1, 0x3

    const-string v2, "scaleY"

    const-string v3, "scaleX"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_2

    :cond_1
    move-object p0, v3

    :goto_0
    move p1, v4

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    const/high16 p0, -0x80000000

    move p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_1

    move-object p0, v2

    goto :goto_0

    .line 103
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const-wide/16 v7, 0xc8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-lez v6, :cond_4

    .line 104
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-array v11, v5, [F

    aput v4, v11, v10

    .line 105
    invoke-static {v6, p0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 106
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v5, [Landroid/animation/Animator;

    aput-object p0, v11, v10

    .line 107
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 108
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const p0, 0x3dcccccd    # 0.1f

    const v11, 0x3e2e147b    # 0.17f

    .line 109
    invoke-static {v11, v11, p0, v9}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    new-array p0, v5, [F

    aput v9, p0, v10

    .line 113
    invoke-static {v0, v3, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v3, v5, [F

    aput v9, v3, v10

    .line 114
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v5, [F

    aput p1, v3, v10

    const-string p1, "translationX"

    .line 115
    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v5, [F

    aput v4, v3, v10

    const-string v6, "translationY"

    .line 116
    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p0, v6, v10

    aput-object v2, v6, v5

    const/4 p0, 0x2

    aput-object p1, v6, p0

    aput-object v0, v6, v1

    .line 119
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 120
    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const p0, 0x3f4ccccd    # 0.8f

    const p1, 0x3f547ae1    # 0.83f

    .line 121
    invoke-static {p0, v4, p1, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method

.method private showHintView(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionMove$2$GestureHintAnimator(IJ)V
    .locals 7

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionMove - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mCurrentHintId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    const/high16 v1, 0x43520000    # 210.0f

    .line 172
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    .line 173
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->dipToPixel(F)F

    move-result v2

    int-to-float p1, p1

    mul-float v3, v2, p1

    div-float/2addr v3, v1

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const v3, 0x3f947ae1    # 1.16f

    const v4, 0x3e23d708    # 0.15999997f

    mul-float/2addr v4, p1

    div-float/2addr v4, v1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float v1, v4, p1

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    move v1, v3

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v3

    .line 184
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mIsCanMove:Z

    const-string v5, "scaleY"

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 190
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_1

    :cond_3
    if-ne v3, v6, :cond_4

    neg-float v2, v2

    .line 193
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_4
    :goto_1
    move-object v1, v5

    goto :goto_3

    :cond_5
    :goto_2
    neg-float v2, v2

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    const-string v1, "scaleX"

    .line 197
    :goto_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mCurrentHintId:I

    sget v3, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    if-ne v2, v3, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    .line 202
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    goto :goto_4

    .line 205
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    if-nez p2, :cond_8

    new-array p2, v6, [F

    aput p1, p2, v2

    .line 206
    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 207
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    .line 208
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object p2, v3, v2

    invoke-virtual {p3, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 209
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 210
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    const p3, 0x3dcccccd    # 0.1f

    const v2, 0x3e2e147b    # 0.17f

    invoke-static {v2, v2, p3, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHoldingViAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 213
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 214
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_4

    .line 216
    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_8
    :goto_4
    return-void
.end method

.method public synthetic lambda$reset$0$GestureHintAnimator()V
    .locals 1

    .line 56
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->showHintView(I)V

    .line 57
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->showHintView(I)V

    .line 58
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->showHintView(I)V

    .line 60
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->resetHintView(I)V

    .line 61
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->resetHintView(I)V

    .line 62
    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method public onActionMove(IIJ)V
    .locals 1

    .line 164
    iput p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mCurrentHintId:I

    .line 166
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHandler:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$GestureHintAnimator$_UakZXdGjzqTd_CXpXwHI_TgOEU;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$GestureHintAnimator$_UakZXdGjzqTd_CXpXwHI_TgOEU;-><init>(Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;IJ)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mHandler:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$GestureHintAnimator$6yduRJqbLcJwHWSoFU8KPQOElng;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$GestureHintAnimator$6yduRJqbLcJwHWSoFU8KPQOElng;-><init>(Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHintViewGroup(Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mGestureHintGroup:Lcom/android/systemui/statusbar/phone/gesture/GestureHintGroup;

    return-void
.end method

.method public start(IZ)V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    .line 227
    iput p1, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mCurrentHintId:I

    .line 228
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/gesture/GestureHintAnimator;->mIsCanMove:Z

    return-void
.end method
