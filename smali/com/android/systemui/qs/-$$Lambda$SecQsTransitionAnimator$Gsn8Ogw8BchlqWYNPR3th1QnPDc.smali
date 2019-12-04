.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$Gsn8Ogw8BchlqWYNPR3th1QnPDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$Gsn8Ogw8BchlqWYNPR3th1QnPDc;->f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$Gsn8Ogw8BchlqWYNPR3th1QnPDc;->f$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->lambda$showCustomizer$7$SecQsTransitionAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
