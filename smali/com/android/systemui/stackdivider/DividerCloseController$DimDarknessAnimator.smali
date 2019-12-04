.class Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;
.super Landroid/animation/ValueAnimator;
.source "DividerCloseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerCloseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimDarknessAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerCloseController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 2

    .line 262
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 263
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    .line 264
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 265
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 266
    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    new-instance p1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimDarknessAnimator$KffptCV7qjIIC7ffLBTJiPw77CQ;

    invoke-direct {p1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimDarknessAnimator$KffptCV7qjIIC7ffLBTJiPw77CQ;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$new$0$DividerCloseController$DimDarknessAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->access$100(Lcom/android/systemui/stackdivider/DividerCloseController;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
