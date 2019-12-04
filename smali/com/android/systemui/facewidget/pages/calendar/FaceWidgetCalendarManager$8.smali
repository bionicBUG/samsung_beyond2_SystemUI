.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$FaceWidgetCalendarManager$8()V
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;Z)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$1400(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$8$Sa5xK2lITmRVSbEVy8wOMUmDC5A;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarManager$8$Sa5xK2lITmRVSbEVy8wOMUmDC5A;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$8;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "FaceWidgetCalendarManager"

    const-string p2, "onReceive android.intent.action.TIME_TICK"

    .line 215
    invoke-static {p1, p2, p0}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
