.class public Lcom/android/systemui/appdock/event/EventBus$Event;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/event/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field cancelled:Z

.field requiresPost:Z

.field trace:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 240
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/event/EventBus$Event;

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/android/systemui/appdock/event/EventBus$Event;->cancelled:Z

    return-object p0
.end method

.method onPostDispatch()V
    .locals 0

    return-void
.end method

.method onPreDispatch()V
    .locals 0

    return-void
.end method
