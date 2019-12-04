.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarManager.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$800(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$802(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$800(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$800(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v1, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$900(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/List;)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v2, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Ljava/util/List;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1100(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$800(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1200(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    .line 187
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$5;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1300(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    return-void

    :catchall_0
    move-exception p0

    .line 187
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
