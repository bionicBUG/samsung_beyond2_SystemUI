.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;
.super Landroid/os/Handler;
.source "FaceWidgetCalendarManager.java"


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
.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Landroid/os/Looper;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 157
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 158
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$3;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$600(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
