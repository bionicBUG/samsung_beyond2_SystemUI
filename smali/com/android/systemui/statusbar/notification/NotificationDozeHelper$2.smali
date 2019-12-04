.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationDozeHelper.java"


# instance fields
.field final synthetic val$dark:Z

.field final synthetic val$target:Landroid/widget/ImageView;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 46
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;->val$dark:Z

    if-nez p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$2;->val$target:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
