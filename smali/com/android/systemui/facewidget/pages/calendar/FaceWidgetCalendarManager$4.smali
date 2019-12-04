.class Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$4;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 165
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$4;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$4;->this$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->access$700(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->loadTodayEvents(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$LoadEventListCompletedListener;)V

    return-void
.end method
