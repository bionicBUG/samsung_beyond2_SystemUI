.class public Lcom/altamirasoft/glanimationutil/GLValueAnimator;
.super Ljava/lang/Object;
.source "GLValueAnimator.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;,
        Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;
    }
.end annotation


# instance fields
.field currentValue:F

.field duration:J

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field isCanceled:Z

.field isFinished:Z

.field isStarted:Z

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mStartTime:J

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field startDelay:J

.field toValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    .line 64
    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    .line 70
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    .line 71
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isCanceled:Z

    return-void
.end method

.method private interpolator(FFFF)F
    .locals 1

    div-float v0, p4, p3

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator:Landroid/animation/TimeInterpolator;

    if-nez p0, :cond_1

    sub-float/2addr p2, p1

    mul-float/2addr p2, v0

    goto :goto_0

    :cond_1
    sub-float/2addr p2, p1

    .line 173
    invoke-interface {p0, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p2, p0

    :goto_0
    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public doFrame()V
    .locals 6

    .line 182
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    if-nez v0, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    .line 189
    iget-wide v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->startDelay:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    sub-long/2addr v0, v2

    .line 193
    iget v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->fromValue:F

    iget v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    iget-wide v4, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->duration:J

    long-to-float v4, v4

    long-to-float v0, v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->interpolator(FFFF)F

    move-result v0

    iput v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    .line 195
    iget v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->currentValue:F

    iget v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->toValue:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 203
    iget-object v3, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_4
    return-void
.end method

.method public end()V
    .locals 2

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isFinished:Z

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->isStarted:Z

    .line 138
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;->onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
