.class Lcom/android/systemui/facewidget/FaceWidgetContainer$1;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "FaceWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/FaceWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {v0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$000(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$1;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$100(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    return-void
.end method
