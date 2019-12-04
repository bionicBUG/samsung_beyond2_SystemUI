.class public Lcom/altamirasoft/glanimationutil/GLAnimatorManager;
.super Ljava/lang/Object;
.source "GLAnimatorManager.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;
.implements Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;
.implements Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;


# instance fields
.field TAG:Ljava/lang/String;

.field anim:Landroid/animation/ValueAnimator;

.field calculateAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLCalculateHelper;",
            ">;"
        }
    .end annotation
.end field

.field easingAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLEasingHelper;",
            ">;"
        }
    .end annotation
.end field

.field isPendingStopEasing:Z

.field needKeepUpdate:Z

.field surfaceView:Landroid/opengl/GLSurfaceView;

.field valueAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->visible:Z

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    .line 27
    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    return-void
.end method


# virtual methods
.method public doFrame()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    const-string v1, "doFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->doFrame()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 250
    :goto_1
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v2}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->doFrame()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 257
    :cond_2
    iget-object p0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->surfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz p0, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_3
    return-void
.end method

.method public onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    .line 271
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    return-void
.end method

.method public onEasingEnd(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V
    .locals 0

    .line 292
    iget-boolean p1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    :cond_0
    return-void
.end method

.method public removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public stopIfNoNeedUpdate()V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needKeepUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 318
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-boolean v2, v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 324
    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needStop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 326
    iget-object p0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_4
    return-void
.end method
