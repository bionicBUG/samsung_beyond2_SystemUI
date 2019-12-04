.class Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;
.super Ljava/lang/Object;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$600(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)I

    move-result v1

    .line 280
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 279
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$800(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;I)V

    return-void
.end method
