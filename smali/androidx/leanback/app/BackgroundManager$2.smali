.class Landroidx/leanback/app/BackgroundManager$2;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/BackgroundManager;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 443
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 444
    iget-object p0, p0, Landroidx/leanback/app/BackgroundManager$2;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget v0, p0, Landroidx/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 445
    iget-object p0, p0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setWrapperAlpha(II)V

    :cond_0
    return-void
.end method