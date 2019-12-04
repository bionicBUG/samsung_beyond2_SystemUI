.class public final synthetic Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    iput p2, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$1:I

    iput p3, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$2:I

    iput p4, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$3:I

    iput p5, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$0:Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;

    iget v1, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$1:I

    iget v2, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$2:I

    iget v3, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$3:I

    iget p0, p0, Lcom/android/systemui/facewidget/pages/clock/-$$Lambda$FaceWidgetClockPage$G0oPMFq4WQYX9KBuG9QFlwOYKUc;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/facewidget/pages/clock/FaceWidgetClockPage;->lambda$onSizeChanged$1$FaceWidgetClockPage(IIII)V

    return-void
.end method
