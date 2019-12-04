.class public interface abstract Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;
.super Ljava/lang/Object;
.source "FaceWidgetCalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventChangedListener"
.end annotation


# virtual methods
.method public abstract onChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation
.end method
