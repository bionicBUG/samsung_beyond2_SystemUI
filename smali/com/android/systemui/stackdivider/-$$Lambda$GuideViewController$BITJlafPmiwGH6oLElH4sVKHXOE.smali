.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/GuideViewController;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$3:I

.field private final synthetic f$4:Z

.field private final synthetic f$5:Landroid/graphics/Rect;

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$2:Lcom/android/systemui/stackdivider/DividerView;

    iput p4, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$3:I

    iput-boolean p5, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$4:Z

    iput-object p6, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$5:Landroid/graphics/Rect;

    iput p7, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$6:I

    iput p8, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$7:I

    iput p9, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$8:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$0:Lcom/android/systemui/stackdivider/GuideViewController;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$2:Lcom/android/systemui/stackdivider/DividerView;

    iget v3, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$3:I

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$4:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$5:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$6:I

    iget v7, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$7:I

    iget v8, p0, Lcom/android/systemui/stackdivider/-$$Lambda$GuideViewController$BITJlafPmiwGH6oLElH4sVKHXOE;->f$8:I

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/GuideViewController;->lambda$scrollMinimizeGuideView$2$GuideViewController(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method
