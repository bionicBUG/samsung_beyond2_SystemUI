.class public Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;
.super Ljava/lang/Object;
.source "SequentialAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedValue"
.end annotation


# instance fields
.field currentValue:F

.field delta:F

.field name:Ljava/lang/String;

.field startValue:F

.field targetValue:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 301
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    .line 302
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 303
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    .line 307
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 301
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    .line 302
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 303
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    .line 311
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 312
    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 2

    .line 337
    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    iget v1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    return-void
.end method

.method public get()F
    .locals 0

    .line 316
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    return p0
.end method

.method public set(F)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    return-void
.end method

.method public setTarget(F)V
    .locals 1

    .line 328
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    .line 329
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->currentValue:F

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    .line 330
    iget p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->targetValue:F

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->startValue:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->delta:F

    return-void
.end method
