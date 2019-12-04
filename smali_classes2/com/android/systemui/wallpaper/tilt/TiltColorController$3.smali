.class Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;
.super Ljava/lang/Object;
.source "TiltColorController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;


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
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGyroChanged(FFF)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$816(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    .line 157
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43200000    # 160.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result v0

    cmpg-float p3, v0, p3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x3ce00000    # -160.0f

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    .line 159
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$902(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    goto :goto_1

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$902(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    goto :goto_1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p2

    mul-float/2addr p1, p2

    cmpg-float p1, p1, p3

    if-gez p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1, p3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$902(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F

    .line 170
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 171
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    neg-float p2, p1

    .line 172
    iget-object p3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    div-float/2addr p2, p1

    goto :goto_2

    :cond_4
    const/high16 p1, -0x3ee00000    # -10.0f

    .line 176
    iget-object p3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float p2, p1, p2

    .line 180
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1000(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)V

    .line 182
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 183
    :cond_6
    invoke-static {}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onGyroChanged: pause "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " isEnable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;->this$0:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->access$1200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    :cond_7
    return-void
.end method
