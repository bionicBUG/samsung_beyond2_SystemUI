.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iput-boolean p2, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$74LlhRdu4lcCLLZg4EF1ExtYe58;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$sendRequestRemoteViewsBroadcast$8$FaceWidgetContainer(Z)V

    return-void
.end method
