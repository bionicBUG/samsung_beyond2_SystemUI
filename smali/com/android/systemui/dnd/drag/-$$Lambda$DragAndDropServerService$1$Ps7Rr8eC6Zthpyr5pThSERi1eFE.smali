.class public final synthetic Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;

.field private final synthetic f$1:Landroid/graphics/Bitmap;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;Landroid/graphics/Bitmap;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;

    iput-object p2, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$2:I

    iput p4, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$3:I

    iput p5, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$0:Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$2:I

    iget v3, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$3:I

    iget p0, p0, Lcom/android/systemui/dnd/drag/-$$Lambda$DragAndDropServerService$1$Ps7Rr8eC6Zthpyr5pThSERi1eFE;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;->lambda$bind$0$DragAndDropServerService$1(Landroid/graphics/Bitmap;III)V

    return-void
.end method
