.class public final synthetic Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field private final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;->f$0:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;->f$0:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$s-J6MF0on43sWEhysjIVAswCVcc;->f$1:[Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->lambda$refreshViews$12(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;Lcom/android/systemui/facewidget/pages/FaceWidgetPage;)V

    return-void
.end method
