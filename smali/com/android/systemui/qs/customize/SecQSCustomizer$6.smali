.class Lcom/android/systemui/qs/customize/SecQSCustomizer$6;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 306
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$802(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 310
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$800(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setHapticFeedbackEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$902(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 314
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/android/systemui/R$id;->qs_active_paged:I

    const/16 v3, 0x1388

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x1770

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$602(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 319
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$900(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$900(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "custom("

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    .line 324
    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$900(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileFromNewCustomTileList(Landroid/content/ComponentName;)V

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$800(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;I)Landroid/view/View$DragShadowBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1102(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;

    move-result-object v1

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1402(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    .line 333
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 334
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
