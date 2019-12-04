.class public final synthetic Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iput-boolean p2, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;->f$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    iget-boolean p0, p0, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetContainer$DayiA3hbVUVv9knucwzz_cMXtsU;->f$1:Z

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->lambda$sendRequestRemoteViewsBroadcast$7$FaceWidgetContainer(ZLjava/lang/String;)V

    return-void
.end method
