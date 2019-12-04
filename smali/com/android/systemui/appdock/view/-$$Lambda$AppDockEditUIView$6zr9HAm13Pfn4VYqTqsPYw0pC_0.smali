.class public final synthetic Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;

.field private final synthetic f$1:Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appdock/view/AppDockEditUIView;Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;->f$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    iput-object p2, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;->f$1:Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;->f$0:Lcom/android/systemui/appdock/view/AppDockEditUIView;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;->f$1:Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->lambda$onDragging$0$AppDockEditUIView(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;Ljava/lang/Integer;)V

    return-void
.end method
