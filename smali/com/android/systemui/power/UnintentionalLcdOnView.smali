.class public Lcom/android/systemui/power/UnintentionalLcdOnView;
.super Landroid/widget/LinearLayout;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;
    }
.end annotation


# instance fields
.field private mCircleImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDragDistance:F

.field private mDragToUnlock:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsLockerSelected:Z

.field private mLockerCueMtrl:Landroid/widget/ImageView;

.field private mLockerImage:Landroid/widget/ImageView;

.field private mStartX:F

.field private mStartY:F

.field private mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

.field private mWhiteCircleRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 56
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->unintentional_lock_screen_white_circle_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteCircleRadius:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->onLockerActionUp()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    return-object p0
.end method

.method private animateText(Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0x96

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$4;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$5;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private animateWhiteCircle(Z)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v0, 0x96

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v2, 0x3eb33333    # 0.35f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$2;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/power/UnintentionalLcdOnView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$3;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private onLockerActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartX:F

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    const/4 p1, 0x1

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateText(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutAlphaAndVisibility(FI)V

    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    return-void
.end method

.method private onLockerActionMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mStartY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    .line 156
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iget v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteCircleRadius:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const p1, 0x3eb33333    # 0.35f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    mul-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteCircleRadius:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x4

    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutAlphaAndVisibility(FI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onLockerActionUp()V
    .locals 5

    const-string v0, "PowerUI.UnintentionalLcdOnView"

    const-string v1, "onLockerActionUp"

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V

    const/4 v2, 0x1

    .line 178
    invoke-direct {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->animateText(Z)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    .line 179
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutAlphaAndVisibility(FI)V

    .line 181
    iput-boolean v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mIsLockerSelected:Z

    .line 182
    iget v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragDistance:F

    iget v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mWhiteCircleRadius:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "drag distance > WhiteCircleRadius"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;->onUnintentionalLcdOnTouchView()V

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->showDescription(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private varargs setAlpha(F[Landroid/view/View;)V
    .locals 2

    .line 247
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 248
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setLockerLayoutAlpha(F)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setAlpha(F[Landroid/view/View;)V

    return-void
.end method

.method private setLockerLayoutAlphaAndVisibility(FI)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutAlpha(F)V

    .line 235
    invoke-direct {p0, p2}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setLockerLayoutVisibility(I)V

    return-void
.end method

.method private setLockerLayoutVisibility(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 243
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setVisibility(I[Landroid/view/View;)V

    return-void
.end method

.method private varargs setVisibility(I[Landroid/view/View;)V
    .locals 2

    .line 253
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p2, v0

    .line 254
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showDescription(Z)V
    .locals 3

    const-string v0, "PowerUI.UnintentionalLcdOnView"

    const-string/jumbo v1, "showDescription of unintentional locker"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mHandler:Landroid/os/Handler;

    .line 88
    sget v0, Lcom/android/systemui/R$id;->unintentional_body:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/android/systemui/R$id;->locker_img_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    .line 92
    sget v1, Lcom/android/systemui/R$id;->locker_image_circle:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    .line 93
    sget v1, Lcom/android/systemui/R$id;->unintentional_locker_img_cue_mtrl:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerCueMtrl:Landroid/widget/ImageView;

    .line 94
    sget v1, Lcom/android/systemui/R$id;->unintentional_drag_to_unlock:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mDragToUnlock:Landroid/widget/TextView;

    .line 99
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->unintentional_lcd_on_alert_window_body_ear_proximity_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->unintentional_lcd_on_alert_window_body_ear_proximity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mLockerImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/power/UnintentionalLcdOnView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/UnintentionalLcdOnView$1;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public regUnintentionalLcdOnTouchViewListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    return-void
.end method

.method public unRegUnintentionalLcdOnTouchListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnTouchListener;

    :cond_0
    return-void
.end method
