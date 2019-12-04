.class Lcom/android/systemui/infinity/preview/ParticleModel$1;
.super Ljava/lang/Object;
.source "ParticleModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/preview/ParticleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/infinity/preview/ParticleModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/infinity/preview/ParticleModel;Lcom/android/systemui/infinity/preview/ParticleModel;)I
    .locals 0

    .line 97
    iget p0, p2, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p2, p0, p1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 95
    check-cast p1, Lcom/android/systemui/infinity/preview/ParticleModel;

    check-cast p2, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/infinity/preview/ParticleModel$1;->compare(Lcom/android/systemui/infinity/preview/ParticleModel;Lcom/android/systemui/infinity/preview/ParticleModel;)I

    move-result p0

    return p0
.end method
