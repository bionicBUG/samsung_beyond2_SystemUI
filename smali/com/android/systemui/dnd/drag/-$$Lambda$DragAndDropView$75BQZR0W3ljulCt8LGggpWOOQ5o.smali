.class public final synthetic Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropView$75BQZR0W3ljulCt8LGggpWOOQ5o;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dnd/drag/DragAndDropView;->lambda$onDragStart$1$DragAndDropView(Ljava/lang/Runnable;)V

    return-void
.end method
