.class public Lcom/android/systemui/qs/SecQsTransitionAnimator;
.super Ljava/lang/Object;
.source "SecQsTransitionAnimator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;,
        Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;
    }
.end annotation


# static fields
.field private static final SineInOut90:Landroid/view/animation/Interpolator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizer:Landroid/view/View;

.field mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

.field private mCustomizerContents:Landroid/view/View;

.field mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

.field private mDetailView:Landroid/view/View;

.field private mDetailViewContents:Landroid/view/View;

.field private mDetailYDiff:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderClockView:Landroid/view/View;

.field private mHeaderDateView:Landroid/view/View;

.field private mIsCustomizerClosing:Z

.field private mIsCustomizerOpening:Z

.field private mIsCustomizerShowing:Z

.field private mIsDetailClosing:Z

.field private mIsDetailOpening:Z

.field private mIsDetailShowing:Z

.field private mOnKeyguard:Z

.field private final mPanelAnimatingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpanded:Z

.field private mPanelYDiff:I

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsFullyExpanded:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mTriggeredExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private clearCustomizerView()V
    .locals 2

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "clearCustomizerView"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerContents:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;->hideCustomizerAnimEnd()V

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    .line 412
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    .line 413
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    return-void
.end method

.method private clearDetailView()V
    .locals 2

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "clearDetailView"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    .line 401
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    .line 402
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    .line 403
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    return-void
.end method

.method private closeCustomizerQuickly()V
    .locals 5

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 327
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$3GvC6q7X4tRAVSgBtebMZwi2FGM;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$3GvC6q7X4tRAVSgBtebMZwi2FGM;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    .line 335
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 344
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    .line 346
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 347
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private closeDetailQuickly()V
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const-wide/16 v2, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 281
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$IibLwqiTS5ME2_n8cEO2YMVncko;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$IibLwqiTS5ME2_n8cEO2YMVncko;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 298
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    .line 300
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 302
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelYDiff:I

    .line 109
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_anim_y_diff:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->updateView()V

    return-void
.end method

.method private onCustomizerAnimEnd(Z)V
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomizerAnimEnd show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;->showCustomizerAnimEnd()V

    const/4 p1, 0x0

    .line 381
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    const/4 p1, 0x1

    .line 382
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    :cond_0
    return-void
.end method

.method private onDetailAnimEnd(Z)V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailAnimEnd show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 368
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelExpanded:Z

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    :cond_0
    return-void
.end method

.method private onPanelAnimEnd(Z)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelAnimEnd show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 355
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearDetailView()V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isCustomizerShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearCustomizerView()V

    :cond_1
    return-void
.end method

.method private restorePanelView()V
    .locals 2

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "restorePanelView"

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showCustomizer(Z)V
    .locals 8

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    .line 307
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x32

    if-eqz p1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    .line 308
    :goto_1
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 309
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$zRrXfAgApJhYo3v97ZfY9pP5UsY;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$zRrXfAgApJhYo3v97ZfY9pP5UsY;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    .line 310
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p1, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerContents:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerContents:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 315
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$Gsn8Ogw8BchlqWYNPR3th1QnPDc;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$Gsn8Ogw8BchlqWYNPR3th1QnPDc;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showDetail(Z)V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    .line 215
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x32

    if-eqz p1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    .line 216
    :goto_1
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 217
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$7g1S-bgs0VZo5b_d_lSzLYM4XBA;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$7g1S-bgs0VZo5b_d_lSzLYM4XBA;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    .line 218
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 222
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 223
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 224
    :goto_2
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 225
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showDetailWithExpand(Z)V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    .line 260
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x16e

    .line 261
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$YBVowTNLsiKmQMUfL4THKJhXkec;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$YBVowTNLsiKmQMUfL4THKJhXkec;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    .line 263
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    neg-int p0, p0

    int-to-float v1, p0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 270
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showQsPanel(Z)V
    .locals 12

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ge v0, v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 182
    iget v10, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelYDiff:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 183
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    .line 184
    :goto_1
    invoke-virtual {v10, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 185
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 186
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v2, v4

    .line 187
    :goto_2
    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 188
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelYDiff:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move v1, v8

    goto :goto_3

    :cond_5
    move v1, v9

    .line 194
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    move-wide v10, v2

    goto :goto_4

    :cond_6
    move-wide v10, v4

    .line 197
    :goto_4
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$VxMdsy8x2THf5GeY-aPHDLf6HIM;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_7

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelYDiff:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v8, v9

    .line 204
    :goto_5
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move-wide v2, v4

    .line 207
    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private showQsPanelWithExpand(Z)V
    .locals 14

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0xa8

    const-wide/16 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-ge v0, v1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move v10, v11

    .line 234
    :goto_1
    invoke-virtual {v12, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-wide v6, v8

    .line 235
    :goto_2
    invoke-virtual {v10, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    move-wide v2, v4

    .line 236
    :goto_3
    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 237
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 239
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    move v1, v10

    goto :goto_4

    :cond_4
    move v1, v11

    .line 242
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    move-wide v12, v6

    goto :goto_5

    :cond_5
    move-wide v12, v8

    .line 243
    :goto_5
    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    move-wide v12, v2

    goto :goto_6

    :cond_6
    move-wide v12, v4

    .line 244
    :goto_6
    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$2VSiZWtfryrwGXzR_Isrr-Zj2lQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$2VSiZWtfryrwGXzR_Isrr-Zj2lQ;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v10, v11

    .line 250
    :goto_7
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    move-wide v6, v8

    .line 251
    :goto_8
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    move-wide v2, v4

    .line 252
    :goto_9
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelAnimatingViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_header_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderClockView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_header_date_clock_misc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHeaderDateView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_detail_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViewContents:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->qs_sec_customize:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->sec_qs_customize_panel_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isCustomizerShowing()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

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

.method public isDetailExpandTriggeredAnimating()Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    return p0
.end method

.method public isDetailOpening()Z
    .locals 0

    .line 440
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    return p0
.end method

.method public isDetailShowing()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

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

.method public synthetic lambda$closeCustomizerQuickly$8$SecQsTransitionAnimator()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearCustomizerView()V

    return-void
.end method

.method public synthetic lambda$closeDetailQuickly$5$SecQsTransitionAnimator()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearDetailView()V

    return-void
.end method

.method public synthetic lambda$showCustomizer$6$SecQsTransitionAnimator(Z)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->onCustomizerAnimEnd(Z)V

    return-void
.end method

.method public synthetic lambda$showCustomizer$7$SecQsTransitionAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic lambda$showDetail$2$SecQsTransitionAnimator(Z)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->onDetailAnimEnd(Z)V

    return-void
.end method

.method public synthetic lambda$showDetailWithExpand$4$SecQsTransitionAnimator(Z)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->onDetailAnimEnd(Z)V

    return-void
.end method

.method public synthetic lambda$showQsPanel$1$SecQsTransitionAnimator(Z)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->onPanelAnimEnd(Z)V

    return-void
.end method

.method public synthetic lambda$showQsPanelWithExpand$3$SecQsTransitionAnimator(Z)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->onPanelAnimEnd(Z)V

    return-void
.end method

.method public synthetic lambda$transitionCustomizer$0$SecQsTransitionAnimator(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 173
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showQsPanel(Z)V

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showCustomizer(Z)V

    return-void
.end method

.method public onPanelClosed()V
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearDetailView()V

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isCustomizerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearCustomizerView()V

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->restorePanelView()V

    return-void
.end method

.method public setCustomizerCallback(Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    return-void
.end method

.method public setDetailCallback(Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    .line 421
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mOnKeyguard:Z

    .line 422
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearDetailView()V

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isCustomizerShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearCustomizerView()V

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->restorePanelView()V

    :cond_2
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->init()V

    return-void
.end method

.method public transitionCustomizer(Z)V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionCustomizer show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->closeCustomizerQuickly()V

    return-void

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$6GB6ZUY-LhowAK0JFBkpVg2CjLM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$6GB6ZUY-LhowAK0JFBkpVg2CjLM;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)V

    if-eqz p1, :cond_2

    const-wide/16 p0, 0x96

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x0

    :goto_1
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public transitionDetail(ZZ)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transitionDetail show : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " triggeredExpand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecQsTransitionAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    .line 136
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 139
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    .line 141
    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez p2, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->closeDetailQuickly()V

    return-void

    .line 147
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    if-eqz p2, :cond_2

    .line 148
    iget-object p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    xor-int/lit8 p2, p1, 0x1

    .line 149
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showQsPanelWithExpand(Z)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showDetailWithExpand(Z)V

    goto :goto_1

    :cond_2
    xor-int/lit8 p2, p1, 0x1

    .line 152
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showQsPanel(Z)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->showDetail(Z)V

    :goto_1
    return-void
.end method

.method public updatePanelExpanded(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelExpanded:Z

    return-void
.end method
