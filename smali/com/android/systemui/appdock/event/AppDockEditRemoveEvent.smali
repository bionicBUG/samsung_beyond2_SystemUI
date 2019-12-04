.class public Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;
.super Lcom/android/systemui/appdock/event/EventBus$Event;
.source "AppDockEditRemoveEvent.java"


# instance fields
.field public final info:Lcom/android/systemui/appdock/model/AppDockItemInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/appdock/event/EventBus$Event;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    return-void
.end method
