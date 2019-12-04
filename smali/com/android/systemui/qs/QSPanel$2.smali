.class Lcom/android/systemui/qs/QSPanel$2;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 683
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 687
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getAvailableRows()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 689
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_edit_tile_vertical_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 690
    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v4

    .line 691
    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getTileHorizontalMargin()I

    move-result v1

    .line 687
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTileLayoutResources(IIII)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 694
    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 695
    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$2;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 696
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$2;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->show(II)V

    :cond_0
    return-void
.end method
