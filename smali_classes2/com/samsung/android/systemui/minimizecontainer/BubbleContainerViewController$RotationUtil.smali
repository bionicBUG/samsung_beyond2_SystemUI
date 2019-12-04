.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;
.super Ljava/lang/Object;
.source "BubbleContainerViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationUtil"
.end annotation


# static fields
.field static sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field static sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 595
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    .line 596
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    .line 597
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    .line 598
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustPositionInDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .locals 4

    .line 647
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, p2

    iget v2, p0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    sub-int/2addr v0, p2

    sub-int p2, v0, v2

    goto :goto_0

    .line 649
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    add-int v0, p2, p4

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    move p2, v3

    .line 652
    :goto_0
    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, p4, p3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_2

    sub-int/2addr p4, p3

    sub-int p1, p4, v1

    goto :goto_1

    .line 654
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int p3, p1, p5

    iget p4, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p3, p4, :cond_3

    add-int/2addr p1, p5

    sub-int/2addr p1, p4

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v3

    .line 659
    :cond_5
    :goto_2
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    const/4 p0, 0x1

    return p0
.end method

.method static deltaRotation(II)I
    .locals 0

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method static rotateBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 604
    invoke-static {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController$RotationUtil;->deltaRotation(II)I

    move-result p0

    .line 605
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 624
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 625
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 626
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 617
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 618
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 619
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 620
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 611
    :cond_2
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 612
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 613
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 614
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 608
    :cond_3
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 630
    :goto_0
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
