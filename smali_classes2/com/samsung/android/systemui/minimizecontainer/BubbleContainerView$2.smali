.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;
.super Ljava/lang/Object;
.source "BubbleContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->createFloatingIconAnimation(FF)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 318
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
