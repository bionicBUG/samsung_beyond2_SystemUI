.class public Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;,
        Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public dx:F

.field public dy:F

.field private elementDuration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field private isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field private preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    .line 38
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    .line 39
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    .line 41
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    .line 42
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    .line 44
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    .line 45
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    .line 46
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    .line 48
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    .line 51
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    .line 53
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    .line 61
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    .line 63
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 64
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 66
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    .line 67
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    const-wide/16 v2, 0x0

    .line 69
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    .line 70
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    .line 71
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    .line 72
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    .line 73
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    .line 74
    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    .line 75
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    .line 79
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    return p1
.end method


# virtual methods
.method public buildAnimation(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 8

    const-string v0, "round"

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    const-string v0, "ellipse"

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    const-string v0, "parabola"

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    const-string v0, "sinX"

    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, "sinY"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "ImageResource"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 96
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    new-array v0, p2, [I

    .line 97
    new-array v3, p2, [I

    .line 98
    new-array v4, p2, [I

    iput-object v4, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    .line 99
    iget-wide v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    sub-int/2addr p2, v2

    int-to-long v6, p2

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    .line 101
    :goto_0
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    if-ge v1, p2, :cond_5

    .line 102
    aput v1, v3, v1

    .line 103
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    add-int/lit8 v2, p2, 0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    aput p2, v0, v1

    .line 104
    iget-object p2, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    aget v2, v0, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 109
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object p1, p2

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 192
    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    aput v3, v0, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    aput v1, v0, v2

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 195
    :goto_1
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 196
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 198
    iget p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 6

    .line 225
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 227
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 228
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v4

    double-to-float p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 230
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 231
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 6

    .line 245
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 247
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez p1, :cond_0

    .line 248
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p1, v3, v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;-><init>(FFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 249
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 248
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 250
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    .line 261
    :cond_0
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p1, v3, v4, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;-><init>(FFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 262
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 263
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 261
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 264
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 6

    .line 205
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 207
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 208
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr p1, v0

    mul-float/2addr p1, v1

    float-to-double v0, p1

    mul-double/2addr v0, v4

    double-to-float p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 210
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 211
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    .line 320
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 322
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez p1, :cond_0

    .line 323
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;-><init>(FFFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 324
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 323
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 325
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    .line 336
    :cond_0
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;-><init>(FFFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 338
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 336
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 339
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 7

    .line 399
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    .line 401
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez p1, :cond_0

    .line 402
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;-><init>(FFFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    .line 403
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 402
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 404
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    .line 415
    :cond_0
    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;-><init>(FFFF)V

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    .line 416
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v0

    .line 415
    invoke-static {p1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 417
    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method
