.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field final synthetic val$target:Landroid/widget/ImageView;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$1;->val$target:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    return-void
.end method
