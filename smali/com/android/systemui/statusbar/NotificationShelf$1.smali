.class Lcom/android/systemui/statusbar/NotificationShelf$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->startButtonsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 284
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->val$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$000(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$000(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->val$show:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$1;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$000(Lcom/android/systemui/statusbar/NotificationShelf;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
