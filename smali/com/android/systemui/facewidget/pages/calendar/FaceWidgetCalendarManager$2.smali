.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 138
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$500(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$400(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$100(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$000(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$300(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$200(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$300(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$2;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$200(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Landroid/database/ContentObserver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
