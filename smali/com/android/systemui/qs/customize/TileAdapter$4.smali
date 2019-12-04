.class Lcom/android/systemui/qs/customize/TileAdapter$4;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 369
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    invoke-static {p1, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    goto :goto_1

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$v:Landroid/view/View;

    invoke-static {p1, p2, v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    .line 372
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 373
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
