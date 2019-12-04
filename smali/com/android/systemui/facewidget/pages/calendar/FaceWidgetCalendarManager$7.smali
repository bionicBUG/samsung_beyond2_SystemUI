.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$7;
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

    .line 199
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$7;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.android.intent.CHANGE_SHARE"

    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$7;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    :cond_0
    return-void
.end method
