.class Lcom/android/systemui/facewidget/FaceWidgetContainer$4;
.super Landroid/content/BroadcastReceiver;
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

    .line 346
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceWidgetContainer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 352
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Go to the clock page due to unlocking"

    .line 353
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    const-string p1, "servicebox_clock"

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->setCurrentPage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 355
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 356
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p1}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$400(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    .line 357
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$500(Lcom/android/systemui/facewidget/FaceWidgetContainer;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.intent.action.RESPONSE_RESTORE_SETTINGS"

    .line 358
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 359
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetContainer$4;->this$0:Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->access$200(Lcom/android/systemui/facewidget/FaceWidgetContainer;)Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->updateOrderDB()V

    :cond_2
    :goto_0
    return-void
.end method
