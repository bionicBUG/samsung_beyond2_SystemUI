.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iput-object p2, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iget-object p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$3SbVNkZ5VvWzLaxqK2ueHTpbhC8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$dismissFaceWidgetFullScreen$3$FaceWidgetContainer(Ljava/lang/String;)V

    return-void
.end method
