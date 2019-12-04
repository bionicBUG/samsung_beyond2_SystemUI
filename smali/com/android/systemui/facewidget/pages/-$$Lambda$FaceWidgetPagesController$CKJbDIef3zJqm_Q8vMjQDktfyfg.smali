.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$CKJbDIef3zJqm_Q8vMjQDktfyfg;->f$1:Z

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$setPageState$3(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;ZLcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
