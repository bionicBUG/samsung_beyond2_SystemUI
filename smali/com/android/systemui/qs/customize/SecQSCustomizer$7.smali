.class Lcom/android/systemui/qs/customize/SecQSCustomizer$7;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 345
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    if-eq p2, v3, :cond_8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_7

    const/4 v1, 0x4

    if-eq p2, v1, :cond_6

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_9

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p2

    sget v1, Lcom/android/systemui/R$id;->qs_available_paged:I

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result p2

    const/16 v1, 0x1388

    if-ne p2, v1, :cond_2

    .line 359
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 p1, 0x3e8

    invoke-static {p0, p1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto/16 :goto_0

    .line 360
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p2

    sget v1, Lcom/android/systemui/R$id;->qs_active_paged:I

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result p2

    const/16 v1, 0x1770

    if-ne p2, v1, :cond_3

    .line 364
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 p1, 0x7d0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v1, Lcom/android/systemui/R$id;->indicator_right:I

    if-ne p2, v1, :cond_4

    .line 366
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 p1, 0xcc

    invoke-static {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1800(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/android/systemui/R$id;->indicator_left:I

    if-ne p1, p2, :cond_5

    .line 369
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 p1, 0xcb

    invoke-static {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1800(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    .line 371
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1900(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto :goto_0

    .line 380
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_DRAG_ENDED mWhereAmI = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecQSCustomizer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 383
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1502(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    goto :goto_0

    .line 351
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1502(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    .line 352
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto :goto_0

    .line 375
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1502(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    .line 377
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$7;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$2000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    :cond_a
    :goto_0
    return v3
.end method
