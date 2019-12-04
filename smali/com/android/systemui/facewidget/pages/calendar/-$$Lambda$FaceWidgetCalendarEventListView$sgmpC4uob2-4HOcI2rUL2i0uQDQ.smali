.class public final synthetic Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;->f$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;->f$0:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->lambda$updateFaceWidgetCalendarInfo$1$FaceWidgetCalendarEventListView(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method
