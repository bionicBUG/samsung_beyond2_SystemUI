.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr v0, v4

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr p0, v3

    .line 237
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    float-to-double p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
