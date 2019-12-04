.class public Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;
.super Ljava/lang/Object;
.source "FaceWidgetTransitionViewParams.java"


# instance fields
.field public h:F

.field public locationOnScreenX:F

.field public locationOnScreenY:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->x:F

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->y:F

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->w:F

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->h:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 41
    aget p1, v0, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->locationOnScreenX:F

    const/4 p1, 0x1

    .line 42
    aget p1, v0, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionViewParams;->locationOnScreenY:F

    return-void
.end method
