.class public Lcom/android/systemui/statusbar/phone/util/BarModeUtil;
.super Ljava/lang/Object;
.source "BarModeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barMode(II)I
    .locals 4

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    and-int v2, p0, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const v2, 0x8001

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const v2, 0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    and-int/2addr p0, v1

    if-eqz p0, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
