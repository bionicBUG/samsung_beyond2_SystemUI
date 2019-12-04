.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$2$uYTTTvuZNK0PlGbHCABcQdG5IBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$2$uYTTTvuZNK0PlGbHCABcQdG5IBM;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$2$uYTTTvuZNK0PlGbHCABcQdG5IBM;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer$2;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer$2;->lambda$onBootCompleted$0$FaceWidgetContainer$2()V

    return-void
.end method
