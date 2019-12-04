.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 1437
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V
    .locals 0

    .line 1437
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "KeyguardCircleAffordanceView"

    if-eq v0, v1, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: mHintAnimation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mRight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_e

    if-eq v0, v6, :cond_6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1565
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto/16 :goto_3

    :cond_2
    move v0, v7

    goto/16 :goto_1

    .line 1479
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 1481
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1484
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result p1

    sub-float/2addr v4, p1

    .line 1485
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result p1

    sub-float/2addr v3, p1

    float-to-double v0, v4

    float-to-double v2, v3

    .line 1486
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1489
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1496
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1497
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_3

    .line 1501
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    .line 1505
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 1508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v8, 0x2

    mul-long/2addr v3, v8

    cmp-long v0, v0, v3

    if-lez v0, :cond_8

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    goto :goto_0

    .line 1511
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)Z

    :cond_9
    :goto_0
    move v0, v6

    .line 1519
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1521
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: mJustClicked="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mReveal="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 1524
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isUp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mFling="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1523
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v0, :cond_11

    .line 1526
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const-string v0, "bottom"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x29

    goto :goto_2

    :cond_b
    const/16 v0, 0x59

    :goto_2
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    .line 1527
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1528
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1529
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1531
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1532
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1533
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1534
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1536
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1537
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1538
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1539
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    .line 1542
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1543
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1545
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1546
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1547
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1548
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p1, v5, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1550
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1551
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto/16 :goto_3

    .line 1553
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1554
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1555
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_3

    .line 1452
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1453
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1454
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1455
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1474
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1475
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    :cond_11
    :goto_3
    return v6
.end method
