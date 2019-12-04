.class Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerCloseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

.field final synthetic val$this$0:Lcom/android/systemui/stackdivider/DividerCloseController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;->this$1:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;->val$this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;->this$1:Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerCloseController;->access$000(Lcom/android/systemui/stackdivider/DividerCloseController;)Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
