.class public Lcom/android/systemui/statusbar/phone/util/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFloatingRotationButtonPosition(II)I
    .locals 6

    const/16 v0, 0x53

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x33

    const/4 v3, 0x2

    if-nez p0, :cond_1

    if-ne p1, v3, :cond_1

    return v2

    :cond_1
    const/16 v4, 0x35

    const/4 v5, 0x3

    if-nez p0, :cond_2

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    if-ne p0, v1, :cond_3

    if-nez p1, :cond_3

    return v4

    :cond_3
    if-ne p0, v1, :cond_4

    if-ne p1, v3, :cond_4

    return v0

    :cond_4
    if-ne p0, v1, :cond_5

    if-ne p1, v5, :cond_5

    return v2

    :cond_5
    if-ne p0, v3, :cond_6

    if-nez p1, :cond_6

    return v2

    :cond_6
    if-ne p0, v3, :cond_7

    if-ne p1, v1, :cond_7

    return v4

    :cond_7
    if-ne p0, v3, :cond_8

    if-ne p1, v5, :cond_8

    return v0

    :cond_8
    if-ne p0, v5, :cond_9

    if-nez p1, :cond_9

    return v0

    :cond_9
    if-ne p0, v5, :cond_a

    if-ne p1, v1, :cond_a

    return v2

    :cond_a
    if-ne p0, v5, :cond_b

    if-ne p1, v3, :cond_b

    return v4

    :cond_b
    const/16 p0, 0x55

    return p0
.end method

.method public static getRotateButtonStyle(IIZ)I
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    if-ne p1, p2, :cond_2

    .line 38
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCWDegree180:I

    goto :goto_2

    :cond_2
    if-ne p0, p2, :cond_3

    if-ne p1, v0, :cond_3

    .line 40
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCCWDegree180:I

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 35
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCCWStart0:I

    goto :goto_2

    .line 36
    :cond_5
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCWStart0:I

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    .line 31
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCCWStart90:I

    goto :goto_2

    .line 32
    :cond_7
    sget p0, Lcom/android/systemui/R$style;->SecRotateButtonCWStart90:I

    :goto_2
    return p0
.end method

.method public static isRotationCCW(II)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-nez p0, :cond_1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p0, :cond_2

    if-ne p1, v3, :cond_2

    return v2

    :cond_2
    if-ne p0, v0, :cond_3

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-ne p0, v0, :cond_4

    if-ne p1, v1, :cond_4

    return v2

    :cond_4
    if-ne p0, v0, :cond_5

    if-ne p1, v3, :cond_5

    return v0

    :cond_5
    if-ne p0, v1, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    if-ne p0, v1, :cond_7

    if-ne p1, v0, :cond_7

    return v0

    :cond_7
    if-ne p0, v1, :cond_8

    if-ne p1, v3, :cond_8

    return v2

    :cond_8
    if-ne p0, v3, :cond_9

    if-nez p1, :cond_9

    return v0

    :cond_9
    if-ne p0, v3, :cond_a

    if-ne p1, v0, :cond_a

    return v0

    :cond_a
    if-ne p0, v3, :cond_b

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    return v2
.end method
