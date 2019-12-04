.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;
.super Landroid/os/Handler;
.source "TiltColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    const/4 v1, 0x0

    cmpl-float v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 127
    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$400()Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v3, v2

    const v2, 0x3a83126f    # 0.001f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_2
    const v0, -0x457ced91    # -0.001f

    .line 132
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    iput v1, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    goto :goto_2

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v1

    iget v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 141
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHue(F)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$600(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    :cond_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_5
    :goto_3
    return-void
.end method
