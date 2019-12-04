.class public final synthetic Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

.field private final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;->f$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerView$2J1NcV37X_p3z1_XaUzp9bJB8t0;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->lambda$settleDownPointerEffect$6$BubbleContainerView(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
