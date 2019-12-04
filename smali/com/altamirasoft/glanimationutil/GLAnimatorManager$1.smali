.class Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;
.super Ljava/lang/Object;
.source "GLAnimatorManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;->this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->doFrame()V

    return-void
.end method
