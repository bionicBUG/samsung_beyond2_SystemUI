.class public final synthetic Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iput-object p2, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$o-lAMmSCdHJ3QMbUf_ws1e7Gfg4;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->lambda$scrollGuideView$12$MultiSplitGuideViewController(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
