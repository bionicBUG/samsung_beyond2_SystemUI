.class public Lcom/android/systemui/classifier/PointerCountEvaluator;
.super Ljava/lang/Object;
.source "PointerCountEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(I)F
    .locals 0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p0

    int-to-float p0, p0

    return p0
.end method
