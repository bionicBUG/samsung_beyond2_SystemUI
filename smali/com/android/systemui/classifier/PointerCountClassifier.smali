.class public Lcom/android/systemui/classifier/PointerCountClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "PointerCountClassifier.java"


# instance fields
.field private mCount:I


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    invoke-static {p0}, Lcom/android/systemui/classifier/PointerCountEvaluator;->evaluate(I)F

    move-result p0

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PTR_CNT"

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 41
    iput v0, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 45
    iget p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/classifier/PointerCountClassifier;->mCount:I

    :cond_1
    return-void
.end method