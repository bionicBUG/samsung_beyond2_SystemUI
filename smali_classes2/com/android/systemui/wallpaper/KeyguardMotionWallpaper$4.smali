.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

.field final synthetic val$curAngularSum:F


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 806
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v0

    cmpg-float p1, p1, v0

    const v0, 0x3d4ccccd    # 0.05f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    .line 807
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    .line 808
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 810
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    .line 811
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 814
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    .line 818
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 819
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 822
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2402(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    :cond_3
    return-void
.end method
