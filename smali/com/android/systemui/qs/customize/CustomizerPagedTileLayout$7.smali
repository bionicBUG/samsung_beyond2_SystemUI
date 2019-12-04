.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

.field final synthetic val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

.field final synthetic val$cur:I

.field final synthetic val$curAddPos:I

.field final synthetic val$pageOffset:I

.field final synthetic val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$pageOffset:I

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iput p6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$curAddPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 401
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    iget p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$pageOffset:I

    add-int/2addr p2, p3

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    .line 403
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$addInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 404
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$removeTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget p4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$curAddPos:I

    invoke-virtual {p1, p2, p4, p3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleVisibility(Z)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$cur:I

    iget p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;->val$pageOffset:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
