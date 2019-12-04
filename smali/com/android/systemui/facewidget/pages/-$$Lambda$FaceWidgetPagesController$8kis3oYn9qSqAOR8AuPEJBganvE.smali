.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$8kis3oYn9qSqAOR8AuPEJBganvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$8kis3oYn9qSqAOR8AuPEJBganvE;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$8kis3oYn9qSqAOR8AuPEJBganvE;->f$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$setPageState$2$FaceWidgetPagesController(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object p0

    return-object p0
.end method
