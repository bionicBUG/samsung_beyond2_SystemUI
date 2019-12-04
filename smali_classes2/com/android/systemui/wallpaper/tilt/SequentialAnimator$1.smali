.class Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;
.super Ljava/lang/Object;
.source "SequentialAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->updateFrame()J

    .line 37
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$200(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$116(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;F)F

    .line 38
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$000(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$100(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$1;->this$0:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->access$300(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;)Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method
