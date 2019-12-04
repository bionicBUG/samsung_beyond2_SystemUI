.class Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;
.super Ljava/lang/Object;
.source "FaceWidgetPagesController.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAODClockStyleChanged()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->updateAODClockStyle()V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 3

    .line 239
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 3

    .line 229
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_PACKAGE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 3

    .line 234
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$3;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    return-void
.end method
