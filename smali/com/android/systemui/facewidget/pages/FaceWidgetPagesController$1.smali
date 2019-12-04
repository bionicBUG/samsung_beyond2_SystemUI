.class Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$1;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "FaceWidgetPagesController.java"


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

    .line 137
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUpdateLockscreenHiddenItems$0(Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)Ljava/util/stream/Stream;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getAllPagesStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    const-string v0, "FaceWidgetPagesController.#onUpdateLockscreenHiddenItems"

    .line 140
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$1;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$000(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 142
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$1$xi905agRsncVeb1DJSXMzZWp68Y;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPagesController$1$xi905agRsncVeb1DJSXMzZWp68Y;

    .line 143
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$r-w1sko0CFKHffrdsetGLuYGc0A;

    .line 144
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$gyWDRTz2FfmtiFjKFI5O98b14i4;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$gyWDRTz2FfmtiFjKFI5O98b14i4;

    .line 145
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
