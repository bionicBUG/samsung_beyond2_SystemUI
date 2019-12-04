.class public Lcom/android/systemui/classifier/HumanInteractionClassifier;
.super Lcom/android/systemui/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# instance fields
.field private final mBufferedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private final mDpi:F

.field private mEnableClassifier:Z

.field private final mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

.field private final mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

.field private final mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;


# direct methods
.method static synthetic access$000(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 154
    iget-object v2, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v2, v1}, Lcom/android/systemui/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 159
    invoke-virtual {v6, v1}, Lcom/android/systemui/classifier/Classifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 163
    invoke-virtual {v6, v1}, Lcom/android/systemui/classifier/Classifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 166
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    const-string v5, "="

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, " "

    const-string v8, " addTouchEvent"

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ge v3, v2, :cond_8

    .line 168
    iget-object v11, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v11}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/classifier/Stroke;

    .line 170
    sget-boolean v12, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v12, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "stroke"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    :cond_3
    iget-object v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v13, v12

    move v14, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v13, :cond_6

    aget-object v15, v12, v10

    .line 172
    iget v4, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v15, v4, v11}, Lcom/android/systemui/classifier/StrokeClassifier;->getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F

    move-result v4

    .line 173
    sget-boolean v16, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v16, :cond_5

    .line 174
    invoke-virtual {v15}, Lcom/android/systemui/classifier/Classifier;->getTag()Ljava/lang/String;

    move-result-object v15

    .line 175
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v16, v4, v6

    if-ltz v16, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_5
    add-float/2addr v14, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 180
    :cond_6
    sget-boolean v4, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v4, :cond_7

    .line 181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_7
    iget-object v4, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v4, v14}, Lcom/android/systemui/classifier/HistoryEvaluator;->addStroke(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 189
    :cond_9
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "gesture"

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_d

    aget-object v11, v2, v4

    .line 191
    iget v12, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/classifier/GestureClassifier;->getFalseTouchEvaluation(I)F

    move-result v12

    .line 192
    sget-boolean v13, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v13, :cond_c

    .line 193
    invoke-virtual {v11}, Lcom/android/systemui/classifier/Classifier;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v13, v12, v6

    if-ltz v13, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_c
    add-float/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 198
    :cond_d
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_e

    .line 199
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v2, v10}, Lcom/android/systemui/classifier/HistoryEvaluator;->addGesture(F)V

    const/4 v2, 0x7

    .line 202
    invoke-virtual {v0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 205
    :cond_f
    iget-object v0, v0, Lcom/android/systemui/classifier/Classifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_lockscreenAntiFalsingClassifierEnabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIC_enable"

    .line 109
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return p0
.end method

.method public isFalseTouch()Z
    .locals 3

    .line 220
    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 221
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->getEvaluation()F

    move-result p0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 223
    :cond_0
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eval="

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isFalseTouch"

    .line 224
    invoke-static {v0, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 211
    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    .line 215
    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 133
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 136
    :goto_1
    new-instance v1, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 144
    iget-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    return-void
.end method
