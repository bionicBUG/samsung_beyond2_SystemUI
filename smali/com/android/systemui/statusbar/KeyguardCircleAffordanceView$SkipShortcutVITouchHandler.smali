.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipShortcutVITouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1386
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 1362
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1366
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1370
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1371
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1372
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1373
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1374
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1375
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1378
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1379
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1380
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_5
    :goto_0
    return v4

    .line 1340
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1341
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1343
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1351
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    return v4
.end method
