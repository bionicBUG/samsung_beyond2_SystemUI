.class Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;
.super Ljava/lang/Object;
.source "DistanceClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/DistanceClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DistanceVectors"
.end annotation


# instance fields
.field final mDx:F

.field final mDy:F

.field private final mVx:F

.field private final mVy:F

.field final synthetic this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/DistanceClassifier;FFFF)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    .line 162
    iput p3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    .line 163
    iput p4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVx:F

    .line 164
    iput p5, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVy:F

    return-void
.end method


# virtual methods
.method getPassedDistanceThreshold()Z
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Threshold: "

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Horizontal swipe distance: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v3}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$000(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$000(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vertical swipe distance: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v3}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$100(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$100(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method getPassedFlingThreshold()Z
    .locals 7

    .line 181
    iget v0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    iget v1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVx:F

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v2}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$200(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 182
    iget v1, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVy:F

    iget-object v3, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v3}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$200(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 184
    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isHorizontal()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Threshold: "

    const-string v6, ", "

    if-eqz v2, :cond_1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Horizontal swipe and fling distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVx:F

    iget-object v6, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    .line 186
    invoke-static {v6}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$200(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v6

    mul-float/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v2}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$300(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$300(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vertical swipe and fling distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->mVy:F

    iget-object v6, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    .line 192
    invoke-static {v6}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$200(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v6

    mul-float/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {v2}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$400(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/brightline/DistanceClassifier;

    invoke-static {p0}, Lcom/android/systemui/classifier/brightline/DistanceClassifier;->access$400(Lcom/android/systemui/classifier/brightline/DistanceClassifier;)F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method
