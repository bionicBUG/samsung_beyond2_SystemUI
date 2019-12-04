.class public Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
.super Ljava/lang/Object;
.source "FaceWidgetTransitionOption.java"


# instance fields
.field private mClipBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClipFace:I

.field private mCustomInterpolator:Landroid/animation/TimeInterpolator;

.field private mDuration:I

.field private mMovePivot:I

.field private mScalePivot:I

.field private mScaleRestrict:I

.field private mSourceViewCustomAnimator:Landroid/animation/Animator;

.field private mStartDelay:I

.field private mTargetViewCustomAnimator:Landroid/animation/Animator;

.field private mTransitionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    .line 52
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    .line 54
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScaleRestrict:I

    .line 55
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    .line 56
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 57
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipBlackList:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    .line 52
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    .line 54
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScaleRestrict:I

    .line 55
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    .line 56
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 57
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipBlackList:Ljava/util/Set;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->copyFrom(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    return-void
.end method

.method public static final combineOptions(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 2

    .line 257
    new-instance v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;-><init>(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    .line 258
    iget p0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 259
    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    .line 262
    :cond_0
    iget p0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    if-eq p0, v1, :cond_1

    .line 263
    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    .line 266
    :cond_1
    iget p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    iget v1, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    or-int/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    .line 267
    iget p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    iget v1, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    or-int/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 268
    iget p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    iget v1, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    or-int/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 269
    iget p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    iget v1, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    or-int/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    .line 271
    iget-object p0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p0, :cond_2

    .line 272
    iput-object p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    .line 275
    :cond_2
    iget-object p0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_3

    .line 276
    iput-object p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    .line 279
    :cond_3
    iget-object p0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_4

    .line 280
    iput-object p0, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    .line 283
    :cond_4
    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->validatePivot(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    return-object v0
.end method

.method public static final generateCompositeOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    const/16 v0, 0x24

    .line 246
    invoke-static {v0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateCompositeOption(II)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateCompositeOption(II)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 2

    .line 250
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateEmptyOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    const/4 v1, 0x3

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setTransitionType(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v1

    .line 252
    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setPivot(II)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    return-object v0
.end method

.method public static final generateDefaultOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateDefaultOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateDefaultOption(Z)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    .line 238
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateMoveOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    if-eqz p0, :cond_0

    const/16 p0, 0x22

    .line 240
    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setMovePivot(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    :cond_0
    return-object v0
.end method

.method private static final generateEmptyOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 2

    .line 227
    new-instance v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;-><init>()V

    const/16 v1, 0x14d

    .line 228
    iput v1, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    const/4 v1, 0x0

    .line 229
    iput v1, v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    return-object v0
.end method

.method public static final generateMoveOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    const/16 v0, 0x9

    .line 331
    invoke-static {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateMoveOption(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMoveOption(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 2

    .line 335
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateEmptyOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    const/4 v1, 0x1

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setTransitionType(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v1

    .line 337
    invoke-virtual {v1, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setMovePivot(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    return-object v0
.end method

.method private static validatePivot(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 3

    .line 289
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    const/16 v1, 0x24

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 290
    iput v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 293
    :cond_0
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, -0x4

    .line 294
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 297
    :cond_1
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    and-int/lit8 v0, v0, -0x19

    .line 298
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 301
    :cond_2
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    and-int/lit8 v0, v0, -0x3

    .line 302
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 305
    :cond_3
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    and-int/lit8 v0, v0, -0x11

    .line 306
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 309
    :cond_4
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 310
    iput v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 313
    :cond_5
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    and-int/lit8 v0, v0, -0x4

    .line 314
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 317
    :cond_6
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_7

    and-int/lit8 v0, v0, -0x19

    .line 318
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 321
    :cond_7
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    and-int/lit8 v0, v0, -0x3

    .line 322
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 325
    :cond_8
    iget v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_9

    and-int/lit8 v0, v0, -0x11

    .line 326
    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    :cond_9
    return-void
.end method


# virtual methods
.method public addClipBlackList(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipBlackList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public copyFrom(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    .line 77
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    .line 78
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    .line 79
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 80
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 81
    iget v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    .line 82
    iget-object v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    .line 83
    iget-object v0, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    .line 84
    iget-object p1, p1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public getClipFace()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    return p0
.end method

.method public getCustomInterpolator()Landroid/animation/TimeInterpolator;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    return p0
.end method

.method public getMovePivot()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    return p0
.end method

.method public getScalePivot()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    return p0
.end method

.method public getScaleRestrict()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScaleRestrict:I

    return p0
.end method

.method public getSourceViewCustomAnimator()Landroid/animation/Animator;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getStartDelay()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mStartDelay:I

    return p0
.end method

.method public getTargetViewCustomAnimator()Landroid/animation/Animator;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public getTransitionType()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    return p0
.end method

.method public hasBlackList(I)Z
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipBlackList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasCustomInterpolator()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSourceViewCustomAnimation()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTargetViewCustomAnimation()Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFadeEnabled()Z
    .locals 0

    .line 143
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoveEnabled()Z
    .locals 1

    .line 135
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScaleEnabled()Z
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToTransition()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setClipFace(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 153
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mClipFace:I

    return-object p0
.end method

.method public setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mSourceViewCustomAnimator:Landroid/animation/Animator;

    .line 172
    iput-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTargetViewCustomAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public setCustomInterpolator(Landroid/animation/TimeInterpolator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mCustomInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setDuration(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mDuration:I

    return-object p0
.end method

.method public setMovePivot(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 106
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 107
    invoke-static {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->validatePivot(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    return-object p0
.end method

.method public setPivot(II)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 147
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mMovePivot:I

    .line 148
    iput p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    return-object p0
.end method

.method public setScalePivot(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mScalePivot:I

    .line 117
    invoke-static {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->validatePivot(Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)V

    return-object p0
.end method

.method public setTransitionType(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->mTransitionType:I

    return-object p0
.end method
